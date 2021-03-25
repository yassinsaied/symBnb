<?php

namespace App\Entity;

use App\Repository\BoukingRepository;
use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Validator\Constraints as Assert;


/**
 * @ORM\Entity(repositoryClass=BoukingRepository::class)
 * @ORM\HasLifecycleCallbacks()
 */
class Bouking
{
    /**
     * @ORM\Id
     * @ORM\GeneratedValue
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\ManyToOne(targetEntity=User::class, inversedBy="boukings")
     * @ORM\JoinColumn(nullable=false)
     */
    private $bouker;

    /**
     * @ORM\ManyToOne(targetEntity=Ad::class, inversedBy="boukings")
     * @ORM\JoinColumn(nullable=false)
     */
    private $ad;

    /**
     * @ORM\Column(type="datetime")
     */
    private $creatAt;

    /**
     * @ORM\Column(type="datetime")
     * @Assert\Date(message="Invalid date format !")
     * @Assert\GreaterThan(
     *                      "today",
     *                       message="start Date of Reservation Must be greater than Today" 
     * )
     */
    private $startDate;

    /**
     * @ORM\Column(type="datetime")
     * @Assert\Date(message="Invalid date format !")
     * @Assert\GreaterThan(
     *                      propertyPath="startDate",
     *                      message="end date of reservation must be Must be greater than start date . "
     * )
     */
    private $endDate;

    /**
     * @ORM\Column(type="float")
     */
    private $amount;

    /**
     * @ORM\Column(type="text", nullable=true)
     */
    private $comment;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getBouker(): ?User
    {
        return $this->bouker;
    }

    public function setBouker(?User $bouker): self
    {
        $this->bouker = $bouker;

        return $this;
    }

    public function getAd(): ?Ad
    {
        return $this->ad;
    }

    public function setAd(?Ad $ad): self
    {
        $this->ad = $ad;

        return $this;
    }

    public function getCreatAt(): ?\DateTimeInterface
    {
        return $this->creatAt;
    }

    public function setCreatAt(\DateTimeInterface $creatAt): self
    {
        $this->creatAt = $creatAt;

        return $this;
    }

    public function getStartDate(): ?\DateTimeInterface
    {
        return $this->startDate;
    }

    public function setStartDate(\DateTimeInterface $startDate): self
    {
        $this->startDate = $startDate;

        return $this;
    }

    public function getEndDate(): ?\DateTimeInterface
    {
        return $this->endDate;
    }

    public function setEndDate(\DateTimeInterface $endDate): self
    {
        $this->endDate = $endDate;

        return $this;
    }

    public function getAmount(): ?float
    {
        return $this->amount;
    }

    public function setAmount(float $amount): self
    {
        $this->amount = $amount;

        return $this;
    }

    public function getComment(): ?string
    {
        return $this->comment;
    }

    public function setComment(?string $comment): self
    {
        $this->comment = $comment;

        return $this;
    }

    public function makeDuration()
    {

        $duration = $this->endDate->diff($this->startDate)->days;
        return $duration;

    }

    /**
     * @ORM\PrePersist
     */

    public function makeAmountAndCreatAt()
    {
        $this->creatAt = new \DateTime();
        $this->amount = $this->ad->getPrice() * $this->makeDuration();

    }

    public function getVerifyDate()
    {
        //get not available days
        $notavalableDays = $this->ad->notAvailableDays();
        //get days of reservation
        $boukingDays = $this->getBoukingDays();

        $formatDate = function ($day) {
            return $day->format('Y-m-d');
        };

        $strnotDays = array_map($formatDate, $notavalableDays);
        $strBoukingDays = array_map($formatDate, $boukingDays);

        foreach ($strBoukingDays as $strBoukingDay) {

            if (array_search($strBoukingDay, $strnotDays) == true) {
                return false;
            }

        }

        return true;

    }

    public function getBoukingDays()
    {
        $days = range($this->startDate->getTimestamp(), $this->endDate->getTimestamp(), 24 * 60 * 60);
        $dateDays = array_map(function ($day) {
            return new \DateTime(date('Y-m-d', $day));
        }, $days);

        return $dateDays;

    }

}
