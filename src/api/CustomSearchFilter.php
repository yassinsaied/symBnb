<?php

namespace App\Api;

use ApiPlatform\Core\Bridge\Doctrine\Orm\Filter\AbstractFilter;
use ApiPlatform\Core\Bridge\Doctrine\Orm\Util\QueryNameGeneratorInterface;
use Doctrine\ORM\QueryBuilder;

class CustomSearchFilter extends AbstractFilter
{

    protected function filterProperty(string $property, $value, QueryBuilder $queryBuilder, QueryNameGeneratorInterface $queryNameGenerator, string $resourceClass, string $operationName = null)
    {

        if ($property !== 'search') {
            return;
        }

       
        $alias = $queryBuilder->getRootAliases()[0];
                $queryBuilder->andWhere(sprintf('%s.title LIKE :search OR %s.description LIKE :search OR %s.introduction LIKE :search',  $alias,  $alias, $alias))
                     ->setParameter('search', '%'.$value.'%');
                     
      

    }

    public function getDescription(string $resourceClass): array
    {

        return [
            'search' => [
                'property' => null,
                'type' => 'string',
                'required' => false,
                'openapi' => [
                    'description' => 'Search across multiple fields',
                ],
            ]
        ];
    }

}
