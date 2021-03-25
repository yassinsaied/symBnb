<?php

namespace App\Event;

use Symfony\Component\EventDispatcher\EventSubscriberInterface;
use App\Event\ActivationUserEvent;
use App\Entity\User ;

use Twig\Environment;


class ActivationUserSubscriber implements EventSubscriberInterface
{
   private $twig;
   private $mailer;

   public function __construct( \Swift_Mailer $mailer , Environment $twig)
   {

      
        $this->twig = $twig;
        $this->mailer =$mailer ;

   }


   public static function getSubscribedEvents() 
   {
     
    return [
         ActivationUserEvent::NAME_EVENT => 'onRegister'
      ];


   }

   public function onRegister(ActivationUserEvent $event)
   {

    
      $user = $event->getUser();

      //dump($user);
      $message = (new \Swift_Message('New account '))
                   ->setFrom('saied.youssef92@gmail.com')
                   ->setTo($user->getEmail())
                   ->setBody($this->twig->render('emails/activation_mail.html.twig' , [

                                  'token' => $user->getActivationToken()
                                            ]),

                        'text/html'     
                   );

      $this->mailer->send($message);             
                  


   }

  








}













?>