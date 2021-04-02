<?php

namespace App\Controller;

use App\Entity\Ad;
use App\Entity\Search;
use App\Form\SearchType;
use Doctrine\ORM\EntityManagerInterface;
use Knp\Component\Pager\PaginatorInterface;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;


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
        // $checkIn = \DateTime::createFromFormat(
        //     'd/m/Y',
        //     $request->query->get('Check-in')
        // );
        // $checkOut = \DateTime::createFromFormat(
        //     'd/m/Y',
        //     $request->query->get('Check-out')
        // );
        // $strSearch = $request->query->get('search');
        // $order = $request->query->get('order');

         $search = new Search();
         $form = $this->createForm(SearchType::class , $search);
         $form->handleRequest($request);
        
      


        $minPrice = $this->entityManger
            ->getRepository(Ad::class)
            ->getMinPrice();
        $maxPrice = $this->entityManger
            ->getRepository(Ad::class)
            ->getMaxPrice();

        // $listAds = $this->entityManger
        //     ->getRepository(Ad::class)
        //     ->searchAds(
        //         $strSearch,
        //         $minPrice,
        //         $maxPrice,
        //         $checkIn,
        //         $checkOut,
        //         $order
        //     );


        $listAds = $this->entityManger->getRepository(Ad::class)->findAll();
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
            'minPrice'  => $minPrice,
            'maxPrice'  => $maxPrice,
            'formSearcht'=> $form->createView(),
        ]);
    }
}
