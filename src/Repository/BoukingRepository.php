<?php

namespace App\Repository;

use App\Entity\Bouking;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @method Bouking|null find($id, $lockMode = null, $lockVersion = null)
 * @method Bouking|null findOneBy(array $criteria, array $orderBy = null)
 * @method Bouking[]    findAll()
 * @method Bouking[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class BoukingRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Bouking::class);
    }

    // /**
    //  * @return Bouking[] Returns an array of Bouking objects
    //  */
    /*
    public function findByExampleField($value)
    {
        return $this->createQueryBuilder('b')
            ->andWhere('b.exampleField = :val')
            ->setParameter('val', $value)
            ->orderBy('b.id', 'ASC')
            ->setMaxResults(10)
            ->getQuery()
            ->getResult()
        ;
    }
    */

    /*
    public function findOneBySomeField($value): ?Bouking
    {
        return $this->createQueryBuilder('b')
            ->andWhere('b.exampleField = :val')
            ->setParameter('val', $value)
            ->getQuery()
            ->getOneOrNullResult()
        ;
    }
    */
}
