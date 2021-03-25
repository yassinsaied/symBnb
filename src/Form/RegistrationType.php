<?php

namespace App\Form;

use App\Entity\User;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\EmailType;
use Symfony\Component\Form\Extension\Core\Type\PasswordType;

class RegistrationType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('firstName' ,  TextType::class , [
                        'label' => "FirstName",
                        'attr' => [
                        'placeholder' => 'enter your First Name'
                       ]
               ])

            
            ->add('lastName',  TextType::class , [
                        'label' => "Last Name",
                        'attr' => [
                        'placeholder' => 'enter your last Name'
                        ]
               ])


            ->add('email' , EmailType::class , [
                        'label' => "Email",
                        'attr' => [
                        'placeholder' => 'enter your Email'
                        ]
               ])

            ->add('hash' ,  PasswordType::class , [
                        'label' => "Password",
                        'attr' => [
                        'placeholder' => 'enter your Password'
                        ]
               ])

             ->add('confirmPassword' ,  PasswordType::class , [
                'mapped' => false,
                'label' => "confirm Password",
                'attr' => [
                'placeholder' => 'confirm your Password'
                ]
       ])   
                               
        ;
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class' => User::class,
        ]);
    }
}
