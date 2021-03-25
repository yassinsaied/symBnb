<?php

namespace App\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\Extension\Core\Type\PasswordType;

class ResetPasswordType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('NewPassword' , PasswordType::class , [
                'label' => 'New password',
                'attr' => [

                    'placeholder' => 'Enter your new password'
                ]
            ])

            ->add('confirmPassword', PasswordType::class , [
                'label' => 'confirm password',
                'attr' => [

                    'placeholder' => 'confirm your new password'
                ]
            ])
        ;
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            // Configure your form options here
        ]);
    }
}
