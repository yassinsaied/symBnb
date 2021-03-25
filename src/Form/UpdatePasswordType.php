<?php

namespace App\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\Extension\Core\Type\PasswordType;

class UpdatePasswordType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('currentPassword' , PasswordType::class , [
               'label' => "Current Password",
               'attr' => [
                'placeholder' => 'enter your Current Password'
               ]

            ])
            ->add('newPassword' , PasswordType::class , [
                'label' => "New  Password",
                'attr' => [
                    'placeholder' => 'enter your New  Password'
                   ]
 
             ])

            ->add('confirmNewPass' , PasswordType::class , [
                'label' => "confirm new  Password" ,
                'attr' => [
                    'placeholder' => 'confirm your new  Password'
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
