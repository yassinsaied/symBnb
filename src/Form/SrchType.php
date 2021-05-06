<?php

namespace App\Form;

use App\Entity\Search;
use Symfony\Component\Form\AbstractType;
use App\Form\DataTransformer\DateTransformerSearch;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\HiddenType;



class SrchType extends AbstractType
{


    public function __construct(DateTransformerSearch $transformer)
    {
        $this->transformer = $transformer;
    }




    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->setMethod('GET')
            ->add('q', TextType::class, [
                'required' => false,
                'attr' => ['placeholder' => 'search any text here',
                    'class' => 'form-control',

                ],
            ])

            ->add('min', HiddenType::class)

            ->add('max', HiddenType::class)

            ->add('checkIn', TextType::class, [
                'label' => 'Chek-In',
                'required' => false
            ])

            ->add('checkOut', TextType::class, [
                'label' => 'Chek-Out',
                'required' => false
                
                
            ]);

    
            



                  $builder->get('checkIn')->addModelTransformer($this->transformer);
                     
                  $builder->get('checkOut')->addModelTransformer($this->transformer);
          
                     
     
           
           
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class' => Search::class,
        ]);
    }
}
