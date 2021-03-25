<?php

namespace App\Form;

use App\Entity\Bouking;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use App\Form\DataTransformer\DateTransformer;

class BoukingType extends AbstractType
{
     
    public function __construct(DateTransformer $transformer)
    {
        $this->transformer = $transformer;
    }


    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder

            ->add('startDate', TextType::class, [
                'label' => 'Cheke-in',
                'attr' => [
                    'id' => 'Cheke-in',
                    'readonly' => true,

                ],
            ])

            ->add('endDate', TextType::class, [
                'label' => 'Cheke-out',
                'attr' => [
                    'id' => 'Cheke-in',
                    'readonly' => true,
                ],
            ])

            ->add('comment', TextareaType::class, [
                'label' => 'Any suggestions',
                'required' => false,
                'attr' => [
                    'placeholder' => 'If you have any suggestions, ideas or comments to this reservation',
                    'rows' => 4,

                ],

            ])

        ;


        $builder->get('startDate')->addModelTransformer($this->transformer);
        $builder->get('endDate')->addModelTransformer($this->transformer);
               
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class' => Bouking::class,
        ]);
    }
}
