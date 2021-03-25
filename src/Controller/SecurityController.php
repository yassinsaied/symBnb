<?php

namespace App\Controller;

use App\Entity\User;
use App\Event\ActivationUserEvent;
use App\Form\ForgetPasswordType;
use App\Form\RegistrationType;
use App\Form\ResetPasswordType;
use App\Security\LoginFormAuthenticator;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\EventDispatcher\EventDispatcherInterface;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\Session\Flash\FlashBagInterface;
use Symfony\Component\Security\Core\Encoder\UserPasswordEncoderInterface;
use Symfony\Component\Security\Guard\GuardAuthenticatorHandler;
use Symfony\Component\Security\Http\Authentication\AuthenticationUtils;

class SecurityController extends AbstractController
{

    private $authUtils;
    private $entityManger;
    private $encoderPassword;
    private $flashBag;

    public function __construct(AuthenticationUtils $authUtils, EntityManagerInterface $entityManger, UserPasswordEncoderInterface $encoderPassword, FlashBagInterface $flashBag)
    {
        $this->authUtils = $authUtils;
        $this->entityManger = $entityManger;
        $this->encoderPassword = $encoderPassword;
        $this->flashBag = $flashBag;

    }

    public function login(): Response
    {
        $error = $this->authUtils->getLastAuthenticationError();
        $lastUserName = $this->authUtils->getLastUsername();

        return $this->render('user/login.html.twig', [

            "error" => $error,
            "lastUserName" => $lastUserName,
        ]);
    }

    public function logout()
    {

    }

    public function register(Request $request, EventDispatcherInterface $dispatcher, GuardAuthenticatorHandler $guardHandler, LoginFormAuthenticator $authenticator)
    {
        $user = new User();

        $form = $this->createForm(RegistrationType::class, $user);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {

            $hashPassword = $this->encoderPassword->encodePassword($user, $user->getHash());
            $user->setHash($hashPassword);

            $this->entityManger->persist($user);
            $this->entityManger->flush();

            $event = new ActivationUserEvent($user);
            $dispatcher->dispatch($event, ActivationUserEvent::NAME_EVENT);

            //return $this->redirectToRoute('login');
            $this->flashBag->add(
                'success',
                'you must activate your account from your email.!'
            );

            return $guardHandler->authenticateUserAndHandleSuccess(
                $user,
                $request,
                $authenticator,
                'main' // firewall name in security.yaml
            );

        }

        return $this->render('user/register.html.twig', [

            'registrationForm' => $form->createView(),
        ]);

    }

    public function activationUser($token)
    {
        $user = $this->entityManger->getRepository(User::class)->findOneBy([

            'activationToken' => $token,
        ]);

        if (!$user) {
            // On renvoie une erreur 404
            throw $this->createNotFoundException('Cet utilisateur n\'existe pas');
        }

        $user->setActivationToken(null);
        $this->entityManger->flush();
        return $this->redirectToRoute('login');

    }

    public function forgetPassword(Request $request, \Swift_Mailer $mailer)
    {
        $form = $this->createForm(ForgetPasswordType::class);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {

            $email = $form->get('email')->getData();
            $user = $this->entityManger->getRepository(User::class)->findOneBy([
                'email' => $email,
            ]);

            if ($user === null) {

                return $this->render('user/login.html.twig', [

                    'error' => 'this email dont exist',
                    'lastUserName' => $email,

                ]);

            }

            $token = md5(uniqid());
            $user->setActivationToken($token);
            $this->entityManger->flush();

            $message = (new \Swift_Message('Update your password'))
                ->setFrom('saied.youssef92@gmail.com')
                ->setTo($email)
                ->setBody($this->render('emails/reset_password.html.twig', [

                    'token' => $user->getActivationToken(),
                ]),

                    'text/html'
                );

            $mailer->send($message);

            $this->flashBag->add(
                'success',
                'Password reset email sent .!'
            );

            return $this->redirectToRoute('home_page');

        }

        return $this->render('user/forget_password.html.twig', [

            'forgetPassForm' => $form->createView(),

        ]);
    }

    public function resetPassword($token, Request $request)
    {
        $form = $this->createForm(ResetPasswordType::class);
        $form->handleRequest($request);

        $user = $this->entityManger->getRepository(User::class)->findOneBy([
            'activationToken' => $token,
        ]);

        if ($user === null) {

            return $this->render('user/login.html.twig', [

                'error' => "Ivalid token",
                'lastUserName' => null,

            ]);

        }

        if ($form->isSubmitted() && $form->isValid()) {
            $newpass = $form->get('NewPassword')->getData();
            $hashPassword = $this->encoderPassword->encodePassword($user,$newpass);
            $user->setHash($hashPassword);
            $user->setActivationToken(null);
            $this->entityManger->flush();

            return $this->render('user/login.html.twig', [

                'validationAccountMsg' => "Successful Password Reset",
                'lastUserName' => null,

            ]);

        }

        return $this->render('user/reset_password.html.twig', [

            'resetPasswordForm' => $form->createView(),
            'token' => $token,

        ]);
    }

}
