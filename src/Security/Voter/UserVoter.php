<?php

namespace App\Security\Voter;

use App\Entity\User;
use Symfony\Component\Security\Core\Security;
use Symfony\Component\Security\Core\User\UserInterface;
use Symfony\Component\Security\Core\Authorization\Voter\Voter;
use Symfony\Component\Security\Core\Authentication\Token\TokenInterface;


class UserVoter extends Voter
{    
    const EDIT = 'edit';
    const REMOVE = 'remove';
    private $security;

    public function __construct(Security $security)
    {

        $this->security = $security;
    }


    protected function supports($attribute, $subject)
    {
        if (!in_array($attribute, [self::EDIT, self::REMOVE])) {
            return false;
        }

        // only vote on `Post` objects
        if (!$subject instanceof User) {
            return false;
        }

        return true;
    }

    protected function voteOnAttribute($attribute, $subject, TokenInterface $token)
    {
        $user = $token->getUser();
        $author = $subject ;
        // if the user is anonymous, do not grant access
        if (!$user instanceof UserInterface) {
            return false;
        }

        // ... (check conditions and return true to grant permission) ...
        switch ($attribute) {
            case 'edit':
                
                if ($author == $user && $this->security->isGranted('ROLE_USER')) {

                    return true;
                }


                break;
            case 'romove':

                if ($author == $user && $this->security->isGranted('ROLE_USER')) {

                    return true;
                }

                break;
        }

        if ($this->security->isGranted('ROLE_ADMIN')) {

            return true;
        }

        return false;
    }
}
