<?php

namespace App\Form;

use App\Entity\Search;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\HiddenType;

class SearchType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('q', TextType::class, [
                'attr' => ['placeholder' => 'search any text here'],
            ])
            // ->add('price', TextType::class , [
            //     'mapped' => false,
            //     'attr' => [
            //         'data-slider-min' =>100,
            //         'data-slider-max' =>2000,
            //         'data-slider-step' => 5,
            //         'data-slider-value'=> [120,1000]
                 
            //    ],


            // ] )

            ->add('min', HiddenType::class)
            ->add('max' , HiddenType::class)
            ->add('checkIn', TextType::class, [
                   'label' => 'Cheke-out',
                   'attr' => [
                     'id' => 'Cheke-in',
                    
                ],
            ])
            ->add('checkOut', TextType::class, [
                  'label' => 'Cheke-out',
                  'attr' => [
                  'id' => 'Cheke-out',
                
             ],
         ]);
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class' => Search::class,
        ]);
    }
}
