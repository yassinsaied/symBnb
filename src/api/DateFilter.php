<?php

namespace App\Api;

use ApiPlatform\Core\Bridge\Doctrine\Orm\Filter\AbstractFilter;
use ApiPlatform\Core\Bridge\Doctrine\Orm\Util\QueryNameGeneratorInterface;
use Doctrine\ORM\QueryBuilder;

class DateFilter extends AbstractFilter
{
    protected function filterProperty(string $property, $value, QueryBuilder $queryBuilder, QueryNameGeneratorInterface $queryNameGenerator, string $resourceClass, string $operationName = null)
    {
            if ($property !== 'dateFilter_boukings.startDate' || $property !== 'dateFilter_boukings.endDate') {
                return;
            }

            var_dump($property);
            die;

        //  $rootAlias = $queryBuilder->getRootAliases()[0];
        //  $queryBuilder
        //        ->leftJoin(sprintf('%s.boukings', $rootAlias), 'b')
        //        ->andWhere($queryBuilder->expr()->not(
        //         $queryBuilder->expr()->orX(
        //         $queryBuilder->expr()->between('b.startDate', ':checkIn', ':checkOut'),
        //         $queryBuilder->expr()->between('b.endDate', ':checkIn', ':checkOut')
        //          ))
        //   )
        //     ->setParameter('checkIn', $checkIn)
        //     ->setParameter('checkOut', $checkOut);

    }

    // This function is only used to hook in documentation generators (supported by Swagger and Hydra)
    public function getDescription(string $resourceClass): array
    {
        if (!$this->properties) {
            return [];
        }

        $description = [];
        foreach ($this->properties as $property => $strategy) {
          

            $description["dateFilter_$property"] = [
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
