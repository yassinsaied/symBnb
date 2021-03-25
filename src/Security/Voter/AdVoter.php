<?php

namespace App\Security\Voter;

use App\Entity\Ad;
use Symfony\Component\Security\Core\Authentication\Token\TokenInterface;
use Symfony\Component\Security\Core\Authorization\Voter\Voter;
use Symfony\Component\Security\Core\Security;
use Symfony\Component\Security\Core\User\UserInterface;

class AdVoter extends Voter
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
        if (!$subject instanceof Ad) {
            return false;
        }

        return true;
    }

    protected function voteOnAttribute($attribute, $subject, TokenInterface $token)
    {
        $user = $token->getUser();
        $ad = $subject;
        // if the user is anonymous, do not grant access
        if (!$user instanceof UserInterface) {
            return false;
        }

        switch ($attribute) {

            case 'edit':

                if ($ad->getAuthor() == $user && $this->security->isGranted('ROLE_USER')) {

                    return true;
                }

                break;

            case 'remove':
                if ($ad->getAuthor() == $user && $this->security->isGranted('ROLE_USER')) {

                    return true;
                }
        }

        if ($this->security->isGranted('ROLE_ADMIN')) {

            return true;
        }

        return false;
    }
}
