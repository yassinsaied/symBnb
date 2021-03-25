<?php

namespace App\Event;

use Symfony\Contracts\EventDispatcher\Event;
use App\Entity\User ;


class ActivationUserEvent extends Event
{

   protected $user ;


   const NAME_EVENT = "activation.mail" ;


   public function __construct(User $user)
   {

        $this->user = $user;


   }


   public function getUser()
   {
     return $this->user ;

   }
       


}













?>