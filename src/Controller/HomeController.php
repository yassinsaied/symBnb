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
            $query = $request->query->get('srch');


            // $checkIn = \DateTime::createFromFormat(
            //     'd/m/Y',
            //     $query['checkIn']
            // );
            // $checkOut = \DateTime::createFromFormat(
            //     'd/m/Y',
            //     $query['checkOut']
            // );
            $strSearch =  $query['q'];
            $minPriceSearch =   $query['min'];
            $maxPriceSearch =   $query['max'] ;
           
          

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

                return $this->render('ad/search_ads.html.twig', [
                    'listAds' => $listAdsSearchPaginator,
        
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
