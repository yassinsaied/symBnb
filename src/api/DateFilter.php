<?php

namespace App\Api;

use ApiPlatform\Core\Bridge\Doctrine\Orm\Extension\QueryCollectionExtensionInterface;
use ApiPlatform\Core\Bridge\Doctrine\Orm\Filter\AbstractFilter;
use ApiPlatform\Core\Bridge\Doctrine\Orm\Util\QueryNameGeneratorInterface;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\ORM\QueryBuilder;

class DateFilter extends AbstractFilter implements QueryCollectionExtensionInterface
{
    protected function filterProperty(string $property, $value, QueryBuilder $queryBuilder, QueryNameGeneratorInterface $queryNameGenerator, string $resourceClass, string $operationName = null)
    {
      

    }

    public function apply(QueryBuilder $queryBuilder, QueryNameGeneratorInterface $queryNameGenerator, string $resourceClass, string $operationName = null/*, array $context = []*/)
    {

        if (null === $this->requestStack || null === $request = $this->requestStack->getCurrentRequest()) {
            return;
        }
        $checkIn = null ;
        $checkOut= null ;

        foreach ($this->extractProperties($request, $resourceClass) as $property => $value) {
              
            if ($property === 'boukings.startDate') {
                    $checkIn = $value ;
                    
            }
        
            if ($property === 'boukings.endDate') {
                    $checkOut = $value ;
           }
           

        }

       
        $rootAlias = $queryBuilder->getRootAliases()[0];
        $aliasBoukings = $queryNameGenerator->generateJoinAlias("Bouking"); 

       $queryBuilder
               ->leftJoin(sprintf('%s.boukings', $rootAlias), $aliasBoukings);
       $andX = $queryBuilder->expr()->orX("$aliasBoukings.startDate > :checkOut AND $aliasBoukings.endDate < :checkIn",
                                         "$aliasBoukings.startDate > :checkOut AND $aliasBoukings.endDate > :checkOut",
                                         "$aliasBoukings.startDate < :checkIn AND $aliasBoukings.endDate < :checkIn"
                                            
                                            );
                
       $queryBuilder->andWhere($andX)
               ->orWhere($queryBuilder->expr()->isNull("$aliasBoukings"))
               ->setParameter('checkIn',  new \DateTime($checkIn))
               ->setParameter('checkOut' , new \DateTime($checkOut))      ; 
              
               
           
        // var_dump($queryBuilder->getDQL());exit;
      }

    public function applyToCollection(QueryBuilder $queryBuilder, QueryNameGeneratorInterface $queryNameGenerator, string $resourceClass, string $operationName = null)
    {
       

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
