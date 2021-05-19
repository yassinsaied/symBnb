<?php

namespace App\Controller;

use App\Entity\Ad;
use App\Entity\Search;
use App\Form\SrchType;
use Doctrine\ORM\EntityManagerInterface;
use Knp\Component\Pager\PaginatorInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;

class SearchController extends AbstractController
{

    private $entityManger;
    private $paginator;

    public function __construct(EntityManagerInterface $entityManger, PaginatorInterface $paginator)
    {

        $this->entityManger = $entityManger;
        $this->paginator = $paginator;
    }

    public function resultSerch(Request $request, Search $search): Response
    {

        $minPrice = $this->entityManger
            ->getRepository(Ad::class)
            ->getMinPrice();
        $maxPrice = $this->entityManger
            ->getRepository(Ad::class)
            ->getMaxPrice();

        $query = $request->query->get('srch');
        $strSearch = $query['q'];
        $minPriceSearch = $query['min'];
        $maxPriceSearch = $query['max'];

        $listAds = $this->entityManger
            ->getRepository(Ad::class)
            ->searchAds(
                $strSearch,
                $minPriceSearch,
                $maxPriceSearch,
                $query['checkIn'],
                $query['checkOut']

            );

        $listAdsSearchPaginator = $this->paginator->paginate(
            $listAds,
            $request->query->getInt('page', 1)
        );

        $form = $this->createForm(SrchType::class, $search);
        $form->handleRequest($request);
        if ($form->isSubmitted() && $form->isValid()) {


            
            $this->entityManger->flush();

        }

        if ($request->isXmlHttpRequest()) {

            return $this->render('ui/list_ads.html.twig', [
                'listAds' => $listAdsSearchPaginator,

            ]);

        }

        return $this->render('search/search_ads.html.twig', [
            'listAds' => $listAdsSearchPaginator,
            'formSearch' => $form->createView(),
            'minPrice' => $minPrice,
            'maxPrice' => $maxPrice,

        ]);

    }
}
