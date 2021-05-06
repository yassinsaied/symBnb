<?php
namespace App\Form\DataTransformer;

use App\Form\DataTransformer\DateTransformer;
use Symfony\Component\Form\DataTransformerInterface;
use Symfony\Component\Form\Exception\TransformationFailedException;

class DateTransformerSearch extends DateTransformer
{

    

    public function reverseTransform($stringDate)
    {
        if ($stringDate === null) {
        
           
             return   null;
        }

        $date = \DateTime::createFromFormat('d/m/Y' ,$stringDate);

        if ($date === false) { 
               
            throw new TransformationFailedException();
        }

        return   $date ;

    }

}
