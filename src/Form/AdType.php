<?php

namespace App\Form;

use App\Entity\Ad;
use App\Form\ImageType;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\Extension\Core\Type\FileType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\MoneyType;
use Symfony\Component\Form\Extension\Core\Type\NumberType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Component\Form\Extension\Core\Type\CollectionType;

class AdType extends AbstractType
{
    

    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('title' , TextType::class ,[
               'label' => 'Title of Ad',
               'required' => true,
               'attr' => [
                    'placeholder' => 'Enter the title odf Ad'
                ]

            ])
      
            ->add('price' , MoneyType::class , [
                'label' => 'Price',
                'required' => true,
                'attr' => [
                     'placeholder' => 'Enter the price of Ad'
                 ]
 
             ])

            ->add('rooms' , NumberType::class , [
                'label' => 'Room',
                'required' => true,
                'attr' => [
                     'placeholder' => 'Enter the Number of Room'
                ]
            ])

            ->add('introduction' , TextareaType::class ,[
                'label' => 'Introduction',
                'required' => true,
                'attr' => [
                     'placeholder' => 'Enter the little Description',
                     'rows' => 3
                ]
            ])

            ->add('description' , TextareaType::class ,[
                'label' => 'More Details',
                'required' => true,
                'attr' => [
                     'placeholder' => 'Enter more details of ad',
                     'rows' => 4
                ]
           ])

           
            ->add('images' , CollectionType::class , [
                        'label' => false,
                        'entry_type' => ImageType::class,
                        'allow_add' => true,
                        'allow_delete' => true,
                        'required' => false,
          
            ])

            ->add('save' , SubmitType::class , [

                        'label' =>'create your ad'
                ]);
           
                 
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class' => Ad::class,
        ]);
    }
}
