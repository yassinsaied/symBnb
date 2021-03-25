<?php

namespace App\Form;

use App\Entity\User;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\Extension\Core\Type\FileType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\EmailType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;

class ProfileType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('firstName',  TextType::class , [
                'label' => "FirstName",
                'attr' => [
                'placeholder' => 'Enter your First Name',
                'css' => 'form-row col-md-6'
               ]
       ])

            ->add('lastName' ,   TextType::class , [
                'label' => "Last Name",
                'attr' => [
                'placeholder' => 'Enter your last Name',
                
               ]
       ])
            ->add('email', EmailType::class , [
                'label' => "Email",
                'attr' => [
                'placeholder' => 'Enter your Email',
                
                ]
       ])
           
            ->add('avatarFile', FileType::class, [

                'required' => false,
                'label' =>false,
                'attr' => [
                    'class' => 'avatar-input'
                ]
                

            ])

            ->add('descreption' ,TextareaType ::class , [
                'label' => 'About you',
                'attr' => [
                'placeholder' => 'Little description about you',
               
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
