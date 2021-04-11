<?php

namespace App\Form;

use App\Entity\Search;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\HiddenType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class SrchType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->setMethod('GET')
            ->add('q', TextType::class, [
                'attr' => ['placeholder' => 'search any text here',
                    'class' => 'form-control',

                ],
            ])

            ->add('min', HiddenType::class)

            ->add('max', HiddenType::class)

            ->add('checkIn', TextType::class, [
                'label' => 'Cheke-In',
            ])

            ->add('checkOut', TextType::class, [
                'label' => 'Cheke-Out',
            ]);

    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class' => Search::class,
        ]);
    }
}
