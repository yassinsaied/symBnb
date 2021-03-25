<?php

namespace App\Controller;

use App\Entity\Bouking;
use App\Entity\Rating;
use App\Form\RatingType;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Session\Flash\FlashBagInterface;

class BoukingController extends AbstractController
{

    private $entityManager;
    private $flashBag;

    public function __construct(EntityManagerInterface $entityManager, FlashBagInterface $flashBag)
    {
        $this->entityManager = $entityManager;
        $this->flashBag = $flashBag;

    }

    public function show(Bouking $bouk, Request $request)
    {

        $rating = $this->entityManager->getRepository(Rating::class)->findOneBy(

            ['user' => $this->getUser(),
             'ad' => $bouk->getAd(),
            ]);

        if ($rating == null) {
            $rating = new Rating();
        }
        $form = $this->createForm(RatingType::class, $rating);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $ad = $bouk->getAd();
            $rating->setCreatAt(new \DateTime())
                ->setAd($ad)
                ->setUser($this->getUser());
              
                $ad->setAvgRate($ad->getNotRating());

            $this->entityManager->persist($rating , $ad);
            $this->entityManager->flush();

        }

        return $this->render('bouking\bouk.html.twig', [

            'bouking' => $bouk,
            'ratingForm' => $form->createView(),
            'rating' => $rating
        ]);
    }

}
