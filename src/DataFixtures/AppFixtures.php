<?php

namespace App\DataFixtures;

use App\Entity\Ad;
use App\Entity\Bouking;
use App\Entity\Image;
use App\Entity\Rating;
use App\Entity\User;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;
use Faker\Factory;
use Symfony\Component\Security\Core\Encoder\UserPasswordEncoderInterface;

class AppFixtures extends Fixture
{

    private $encoderPassword;

    public function __construct(UserPasswordEncoderInterface $encoderPassword)
    {

        $this->encoderPassword = $encoderPassword;

    }

    public function load(ObjectManager $manager)
    {

        $faker = Factory::create('fr_FR');
        // $roleAdmin = new Role();
        // $roleAdmin->setTitle('ROLE_ADMIN');

        // $userAdmin = new User();
        // $userAdmin->setFirstName('yassin')
        //           ->setLastName('zarga')
        //           ->setEmail('saiiied.yassiiin@gmail.com')
        //           ->setHash( $this->encoderPassword->encodePassword($userAdmin , 'password'))
        //           ->setAvatar('avatar_2x.png')
        //           ->setDescreption($faker->sentence(4))
        //           ->addUserRole($roleAdmin);

        for ($u = 0; $u < 5; $u++) {
            $user = new User();
            $hashPassword = $this->encoderPassword->encodePassword(
                $user,
                'password'
            );

            $user->setFirstName($faker->firstName)
                ->setLastName($faker->lastName)
                ->setEmail($faker->email)
                ->setHash($hashPassword)
                ->setAvatar('User_2.png')
                ->setDescreption($faker->sentence(4));

            for ($i = 0; $i < 5; $i++) {
                $ad = new Ad();
                $title = substr($faker->sentence(4), 0, -1);

                $ad->setTitle($title)
                    ->setPrice(mt_rand(40, 3000))
                    ->setRooms(mt_rand(1, 5))
                    ->setIntroduction($faker->sentence(2))
                    ->setDescription($faker->sentence(4))
                    ->setAuthor($user);

                for ($j = 0; $j < mt_rand(2, 4); $j++) {

                    $image = new Image();
                    $image->setUrl("home.jpg")
                        ->setTitleImage(substr($faker->sentence(4), 0, -1))
                        ->setAd($ad);

                    $manager->persist($image);

                }

                for ($k = 0; $k < mt_rand(2, 4); $k++) {

                    $bouking = new Bouking();
                    $createAt = $faker->dateTimeBetween('-6 month');
                    $startDate = $faker->dateTimeBetween('-3 month');
                    $days = mt_rand(2, 4);
                    $endDate = (clone $startDate->modify('+' . $days . ' days'));
                    $amount = $days * $ad->getPrice();

                    $bouking->setCreatAt($createAt)
                        ->setStartDate($startDate)
                        ->setEndDate($endDate)
                        ->setAmount($amount)
                        ->setAd($ad)
                        ->setBouker($user);

                    $manager->persist($bouking);

                }

                for ($r = 0; $r < mt_rand(0, 4); $r++) {

                    $rating = new Rating();
                    $creatAt = (clone $endDate->modify('+' . mt_rand(1, 3) . ' days'));
                    $note = mt_rand(1, 5);
                    $rating->setCreatAt($creatAt)
                            ->setNote($note)
                            ->setUser($user)
                            ->setAd($ad)
                            ->setComment($faker->sentence(4));

                    $manager->persist($rating);

                }

                $manager->persist($ad);
            }

            $manager->persist($user);

        }

        // $manager->persist($userAdmin);
        // $manager->persist($roleAdmin);
        $manager->flush();
    }
}
