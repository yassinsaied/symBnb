<?php

namespace App\Entity;

use App\Repository\SearchRepository;
use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass=SearchRepository::class)
 */
class Search
{
    /**
     * @ORM\Id
     * @ORM\GeneratedValue
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\Column(type="string", length=255, nullable=true)
     */
    private $q;

    /**
     * @ORM\Column(type="float")
     */
    private $min;

    /**
     * @ORM\Column(type="float")
     */
    private $max;

    /**
     * @ORM\Column(type="datetime", nullable=true)
     */
    private $checkIn;

    /**
     * @ORM\Column(type="datetime", nullable=true)
     */
    private $checkOut;

    

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getQ(): ?string
    {
        return $this->q;
    }

    public function setQ(?string $q): self
    {
        $this->q = $q;

        return $this;
    }

    public function getMin(): ?float
    {
        return $this->min;
    }

    public function setMin(float $min): self
    {
        $this->min = $min;

        return $this;
    }

    public function getMax(): ?float
    {
        return $this->max;
    }

    public function setMax(float $max): self
    {
        $this->max = $max;

        return $this;
    }

    public function getCheckIn(): ?\DateTimeInterface
    {
        return $this->checkIn;
    }

    public function setCheckIn(?\DateTimeInterface $checkIn): self
    {
        $this->checkIn = $checkIn;

        return $this;
    }

    public function getCheckOut(): ?\DateTimeInterface
    {
        return $this->checkOut;
    }

    public function setCheckOut(?\DateTimeInterface $checkOut): self
    {
        $this->checkOut = $checkOut;

        return $this;
    }

    public function __toString()
    {

        if ($this->q){
            return $this->q;
        }
        return '';
    }


}
