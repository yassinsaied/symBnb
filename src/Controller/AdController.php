<?php

namespace App\Controller;

use App\Entity\Ad;
use App\Form\AdType;
use App\Entity\Bouking;
use App\Form\BoukingType;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Component\Serializer\Serializer;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\File\File;
use Symfony\Component\Serializer\Encoder\JsonEncoder;
use Symfony\Component\Serializer\Normalizer\DateTimeNormalizer;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Session\Flash\FlashBagInterface;
use Knp\Component\Pager\PaginatorInterface;

class AdController extends AbstractController
{
    private $entityManager;
    private $flashBag;
    private $paginator;

    public function __construct(EntityManagerInterface $entityManager,  FlashBagInterface $flashBag, PaginatorInterface $paginator)
      
   {
        $this->entityManager = $entityManager;
        $this->flashBag = $flashBag;
        $this->paginator = $paginator;
    }

    /**
     * fuction to show best Ad
     *
     * @return Response
     */
    public function ads(Request $request): Response
    {
        $listAds = $this->getDoctrine()
            ->getRepository(Ad::class)
            ->findBy([], ['price' => 'ASC']);

        $bestAdsPaginator = $this->paginator->paginate(
            $listAds,
            $request->query->getInt('page', 1)
        );

        return $this->render('ad/ads.html.twig', [
            'bestAdsPaginator' => $bestAdsPaginator,
        ]);
    }

    /**
     * Function To show One Ad
     *
     * @param Ad $ad
     * @return Response
     */
    public function showAd(Ad $ad, Request $request)
    {
        $notAvailableDays = $ad->notAvailableDays();
        $encoders = [new JsonEncoder()];
        $normalizers = [new DateTimeNormalizer('d/m/Y')];

        $serializer = new Serializer($normalizers, $encoders);
        $jsonResult = $serializer->serialize($notAvailableDays, 'json');

        $bouk = new Bouking();
        $form = $this->createForm(BoukingType::class, $bouk);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $user = $this->getUser();
            $bouk->setBouker($user);
            $bouk->setAd($ad);
            if (!$bouk->getVerifyDate()) {
                $this->flashBag->add(
                    'warning',
                    'These dates are already taken'
                );
            } else {
                $this->entityManager->persist($bouk);
                $this->entityManager->flush();

                return $this->redirect(
                    $this->generateUrl('show_bouk', [
                        'id' => $bouk->getId(),
                    ])
                );
            }
        }

        return $this->render('ad/ad.html.twig', [
            'ad' => $ad,
            'formCreateBook' => $form->createView(),
            'notAvailableDays' => $jsonResult,
        ]);
    }

    /**
     * function to create ad
     *
     * @return Response
     */
    public function createAd(Request $request)
    {
        $this->denyAccessUnlessGranted('ROLE_USER');

        $ad = new Ad();
        $form = $this->createForm(AdType::class, $ad);
        $form->handleRequest($request);
        if ($form->isSubmitted() && $form->isValid()) {
            $images = $form->get('images')->getData();
            foreach ($images as $image) {
                $image->setAd($ad);
                $this->entityManager->persist($image);
            }
            $user = $this->getUser();
            $ad->setAuthor($user);
            $this->entityManager->persist($ad);
            $this->entityManager->flush();

            return $this->redirectToRoute('show_ad', [
                'slug' => $ad->getSlug(),
            ]);
        }

        return $this->render('ad/create_ad.html.twig', [
            'formCreateAd' => $form->createView(),
        ]);
    }

    public function editAd(Ad $ad, Request $request)
    {
        $this->denyAccessUnlessGranted('edit', $ad);

        $form = $this->createForm(AdType::class, $ad);
        $form->handleRequest($request);
        if ($form->isSubmitted() && $form->isValid()) {
            $images = $form->get('images')->getData();
            foreach ($images as $image) {
                $image->setAd($ad);
                $this->entityManager->persist($image);
            }

            $this->entityManager->flush();
        }

        return $this->render('ad/edit_ad.html.twig', [
            'formEditAd' => $form->createView(),
        ]);
    }

    private function uploadFile($imageUrl)
    {
        $fileImage = new File($imageUrl);
        $newName = md5(uniqid()) . '.' . $fileImage->guessExtension();
        $fileImage->move($this->getParameter('images_directory'), $newName);

        return $newName;
    }

    public function removeAd(Ad $ad)
    {
        $this->denyAccessUnlessGranted('remove', $ad);
        $this->entityManager->remove($ad);
        $this->entityManager->flush();

        $this->flashBag->add('success', 'successfully Ad deleted !');

        return $this->redirectToRoute('home_page');
    }
}
