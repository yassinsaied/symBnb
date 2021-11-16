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
        // a param name that is guaranteed unique in this query
        $valueParameter = $queryNameGenerator->generateParameterName('search');
        $queryBuilder->andWhere(sprintf('%s.title LIKE :%s OR %s.description LIKE :%s OR %s.introduction LIKE :%s', $alias, $valueParameter, $alias, $valueParameter, $alias, $valueParameter))
            ->setParameter($valueParameter, '%' . $value . '%');

        // var_dump($queryBuilder->getDQL());exit; 
        // var_dump($property, $value) ;           


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
