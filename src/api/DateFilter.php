<?php

namespace App\Api;

use ApiPlatform\Core\Bridge\Doctrine\Orm\Filter\AbstractFilter;
use ApiPlatform\Core\Bridge\Doctrine\Orm\Util\QueryNameGeneratorInterface;
use Doctrine\ORM\QueryBuilder;
use Symfony\Component\VarDumper\VarDumper;

class DateFilter extends AbstractFilter
{
    protected function filterProperty(string $property, $value, QueryBuilder $queryBuilder, QueryNameGeneratorInterface $queryNameGenerator, string $resourceClass, string $operationName = null)
    {
        if ($property === 'boukings.startDate') {
            $chekIn = $value ;
        }

        if ($property ==='boukings.endDate') {
             $chekOut = $value ;
        }
               
               

       



          var_dump($property
        );
        
          $rootAlias = $queryBuilder->getRootAliases()[0];
          $queryBuilder
              ->leftJoin(sprintf('%s.boukings', $rootAlias), 'b') ;
        //        ->andWhere($queryBuilder->expr()->not(
        //         $queryBuilder->expr()->orX(
        //         $queryBuilder->expr()->between('b.startDate', ':checkIn', ':checkOut'),
        //         $queryBuilder->expr()->between('b.endDate', ':checkIn', ':checkOut')
        //          ))
        //   )
        //     ->setParameter('checkIn', $checkIn)
        //     ->setParameter('checkOut', $checkOut);
           //  var_dump( $queryBuilder);

    }



    public function apply(QueryBuilder $queryBuilder, QueryNameGeneratorInterface $queryNameGenerator, string $resourceClass, string $operationName = null/*, array $context = []*/)
    {
       

        if (null === $this->requestStack || null === $request = $this->requestStack->getCurrentRequest()) {
            return;
        }

        foreach ($this->extractProperties($request, $resourceClass) as $property => $value) {
            if ($property === 'boukings.startDate' || $property ==='boukings.endDate') {
              
               $this->filterProperty($property, $value, $queryBuilder, $queryNameGenerator, $resourceClass, $operationName);
          }

        }
    }




    // This function is only used to hook in documentation generators (supported by Swagger and Hydra)
    public function getDescription(string $resourceClass): array
    {
        if (!$this->properties) {
            return [];
        }

        $description = [];
        foreach ($this->properties as $property => $strategy) {
          

            $description[$property] = [
                'property' => $property,
                'type' => 'string',
                'required' => false,
                'swagger' => [
                    'description' => 'Filter using a regex. This will appear in the Swagger documentation!',
                    'name' => 'Custom name to use in the Swagger documentation',
                    'type' => 'Will appear below the name in the Swagger documentation',
                ],
            ];
        }


      
        return $description;
    }
}
