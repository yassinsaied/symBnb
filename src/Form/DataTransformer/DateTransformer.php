<?php
namespace App\Form\DataTransformer;

use Symfony\Component\Form\DataTransformerInterface;
use Symfony\Component\Form\Exception\TransformationFailedException;

class DateTransformer implements DataTransformerInterface
{

    public function transform($date)
    {
        if ($date === null) {
            //throw new TransformationFailedException();
            return;
        }

        return $date->format('d\m\Y');

    }

    public function reverseTransform($stringDate)
    {
        if ($stringDate === null) {
             throw new TransformationFailedException();
        }

        $date = \DateTime::createFromFormat('d/m/Y' ,$stringDate);

        if ($date === false) {          
            throw new TransformationFailedException();
        }

        return   $date ;

    }

}
