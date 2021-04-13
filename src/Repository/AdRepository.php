<?php

namespace App\Repository;

use App\Entity\Ad;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @method Ad|null find($id, $lockMode = null, $lockVersion = null)
 * @method Ad|null findOneBy(array $criteria, array $orderBy = null)
 * @method Ad[]    findAll()
 * @method Ad[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class AdRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Ad::class);
    }

    // /**
    //  * @return Ad[] Returns an array of Ad objects
    //  */
    /*
    public function findByExampleField($value)
    {
    return $this->createQueryBuilder('a')
    ->andWhere('a.exampleField = :val')
    ->setParameter('val', $value)
    ->orderBy('a.id', 'ASC')
    ->setMaxResults(10)
    ->getQuery()
    ->getResult()
    ;
    }
     */

    /*
    public function findOneBySomeField($value): ?Ad
    {
    return $this->createQueryBuilder('a')
    ->andWhere('a.exampleField = :val')
    ->setParameter('val', $value)
    ->getQuery()
    ->getOneOrNullResult()
    ;
    }
     */

     public function findAllQuery() {

       return $this->createQueryBuilder('a')
                   ->getQuery() ;

     }



    public function bestAdsQuery() {

       return $this->createQueryBuilder('a')
                   ->orderBy('a.price' , 'ASC')
                   ->getQuery() ;

    } 

    public function getMinPrice(){
        $query =       $this->createQueryBuilder('a')
                       ->select('MIN(a.price) AS minprice' );
                       
          

            return $query->getQuery()
                         ->getSingleScalarResult();
         

            
       }

       public function getMaxPrice(){
        $query =  $this->createQueryBuilder('a')
                       ->select('MAX(a.price) AS maxprice' );

        return $query->getQuery()
                    ->getSingleScalarResult();
            
       }



    public function searchAds($strSearch, $min, $max, $checkIn, $checkOut)
    {

             

        $query = $this->createQueryBuilder('a')
                       ->leftJoin('a.boukings', 'b');
        
            if (!empty($strSearch)) {

                $query = $query
                    ->andWhere('a.title LIKE :strSerch')
                    ->setParameter('strSerch', '%' . $strSearch . '%');
            }

            if (!empty($min)) {
             
                $query = $query
                    ->andWhere('a.price >= :min')
                    ->setParameter('min', $min);
            }

            if (!empty($max)) {
             
                $query = $query
                    ->andWhere('a.price <= :max')
                    ->setParameter('max', $max);
            }

            if (!empty($checkIn)) {
               
                if(empty($checkOut)){
                   
                    $checkOut = (clone $checkIn->modify('+1 day'));
                                   
                   }
                 
                 $query = $query
                    ->andWhere($query->expr()->not(
                        $query->expr()->orX(
                            $query->expr()->between('b.startDate', ':checkIn', ':checkOut'),
                            $query->expr()->between('b.endDate', ':checkIn', ':checkOut')
                             ))
                      )
                    ->setParameter('checkIn', $checkIn)
                    ->setParameter('checkOut', $checkOut);
            }
      
        // if (!empty($order)) {

        //     if ($order == 'lowprice') {
        //         $query = $query
        //             ->orderBy('a.price', 'ASC');

        //     } else {

        //         $query = $query
        //             ->orderBy('a.' . $order, 'DESC');

        //     }
        // }
            //   dump($query->getQuery()->getSql());
            //   die;

        return $query->getQuery();

    }
}
