<?php

namespace App\Controller;

use App\Entity\User;
use App\Form\ProfileType;
use App\Form\UpdatePasswordType;
use Symfony\Component\Form\FormError;
use Doctrine\ORM\EntityManagerInterface;
use Knp\Component\Pager\PaginatorInterface;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Session\Flash\FlashBagInterface;
use Symfony\Component\Security\Core\Encoder\UserPasswordEncoderInterface;

class UserController extends AbstractController
{

    private $entityManger;
    private $encoderPassword;
    private $flashBag;

    public function __construct(EntityManagerInterface $entityManger, UserPasswordEncoderInterface $encoderPassword, FlashBagInterface $flashBag)
    {

        $this->entityManger = $entityManger;
        $this->encoderPassword = $encoderPassword;
        $this->flashBag = $flashBag;

    }

    public function editProfile(Request $request)
    {

        $user = $this->getUser();
        $this->denyAccessUnlessGranted('edit', $user);

        $form = $this->createForm(ProfileType::class, $user);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {

            $this->entityManger->flush();

        }

        return $this->render('user/edit_profile.html.twig', [

            'editProfileForm' => $form->createView(),

        ]);

    }

    public function updatePassword(Request $request)
    {    
        $user = $this->getUser();
        $this->denyAccessUnlessGranted('edit', $user);

       
        $form = $this->createForm(UpdatePasswordType::class);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {

            $currentPassword = $form->get('currentPassword')->getData();
            if (!password_verify($currentPassword, $user->getHash())) {

                $form->get('currentPassword')->addError(new FormError('This password is invalid'));

            } else {
                $newpassword = $form->get('newPassword')->getData();
                $hashNewPassword = $this->encoderPassword->encodePassword($user, $newpassword);
                $user->setHash($hashNewPassword);
                $this->entityManger->flush();

                $this->flashBag->add(
                    'success',
                    'your password is updated!'
                );

                return $this->redirectToRoute('home_page');

            }

        }
        return $this->render('user/update_password.html.twig', [

            'updatePasswordForm' => $form->createView(),
        ]);
    }

    public function showProfile(User $user)
    {
        return $this->render('user/profile.html.twig', [

            'user' => $user,

        ]);
    }


    public function myProfile(Request $request , PaginatorInterface $paginator)
    {
        $this->denyAccessUnlessGranted('ROLE_USER');
        $user = $this->getUser();
        $adsUser = $user->getAds();

        $adsUserPaginator = $paginator->paginate(
            $adsUser, // Requête contenant les données à paginer (ici nos articles)
            $request->query->getInt('page', 1), // Numéro de la page en cours, passé dans l'URL, 1 si aucune page
            6 // Nombre de résultats par page
        );




        return $this->render('user/profile.html.twig', [

            'user' => $user,
            'adsUserPaginator' =>  $adsUserPaginator

        ]);
    }

}
