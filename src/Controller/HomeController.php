<?php

namespace App\Controller;

use App\Entity\Ad;
use App\Entity\Search;
use App\Form\SrchType;
use Doctrine\ORM\EntityManagerInterface;
use Knp\Component\Pager\PaginatorInterface;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;

class HomeController extends Controller
{
    private $entityManger;
    private $paginator;

    public function __construct(
        EntityManagerInterface $entityManger,
        PaginatorInterface $paginator
    ) {
        $this->entityManger = $entityManger;
        $this->paginator = $paginator;
    }

    public function home(Request $request, PaginatorInterface $paginator)
    {

        $minPrice = $this->entityManger
            ->getRepository(Ad::class)
            ->getMinPrice();
        $maxPrice = $this->entityManger
            ->getRepository(Ad::class)
            ->getMaxPrice();

        $search = new Search();
        $form = $this->createForm(SrchType::class, $search);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {

            $checkIn = \DateTime::createFromFormat(
                'd/m/Y',
                $request->query->get('Check-in')
            );
            $checkOut = \DateTime::createFromFormat(
                'd/m/Y',
                $request->query->get('Check-out')
            );
            $strSearch = $request->query->get('search');
            $order = $request->query->get('order');
            $minPriceSearch =  $request->query->get('min');
            $maxPriceSearch =  $request->query->get('max') ;

            $listAds = $this->entityManger
                ->getRepository(Ad::class)
                ->searchAds(
                    $strSearch,
                    $minPrice,
                    $maxPrice,
                    $checkIn,
                    $checkOut,
                    $order
                );

                $listAdsPaginator = $this->paginator->paginate(
                    $listAds,
                    $request->query->getInt('page', 1)
                );
                return $this->render('ui/list_ads.html.twig', [
                    'listAds' => $listAdsPaginator,
        
                ]);

        }
    

        $listAds = $this->entityManger->getRepository(Ad::class)->findAllQuery();
        $listAdsPaginator = $this->paginator->paginate(
            $listAds,
            $request->query->getInt('page', 1)
        );

        if ($request->isXmlHttpRequest()) {

            return $this->render('ui/list_ads.html.twig', [
                'listAds' => $listAdsPaginator,

            ]);

        }

        return $this->render('home.html.twig', [
            'listAdsPaginator' => $listAdsPaginator,
            'minPrice' => $minPrice,
            'maxPrice' => $maxPrice,
            'formSearcht' => $form->createView(),
        ]);
    }
}
