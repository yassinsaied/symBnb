<?php

namespace App\Entity;

use App\Repository\AdRepository;
use DateTime;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;
use Symfony\Bridge\Doctrine\Validator\Constraints\UniqueEntity;
use Symfony\Component\Validator\Constraints as Assert;

/**
 * @ORM\Entity(repositoryClass=AdRepository::class)
 * @ORM\HasLifecycleCallbacks()
 * @UniqueEntity(
 *     fields={"title"},
 *     message="the title of ad must bu unique please change the title of your Ad ."
 * )
 */
class Ad
{
    /**
     * @ORM\Id
     * @ORM\GeneratedValue
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\Column(type="string", length=255)
     *
     * @Assert\Length(
     *      min = 2,
     *      max = 50,
     *      minMessage = "Your title must be at least {{ limit }} characters long",
     *      maxMessage = "Your title name cannot be longer than {{ limit }} characters"
     * )
     */

    private $title;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $slug;

    /**
     * @ORM\Column(type="float")
     * @Assert\PositiveOrZero(
     *               message= "The price must be 0 or positive value"
     * )
     */
    private $price;

    /**
     * @ORM\Column(type="text")
     * @Assert\Length(
     *      min = 2,
     *      max = 255,
     *      minMessage = "Your first name must be at least {{ limit }} characters long",
     *      maxMessage = "Your first name cannot be longer than {{ limit }} characters"
     * )
     */
    private $introduction;

    /**
     * @ORM\Column(type="text")
     * @Assert\Length(
     *      min = 2,
     *      max = 500,
     *      minMessage = "Your first name must be at least {{ limit }} characters long",
     *      maxMessage = "Your first name cannot be longer than {{ limit }} characters"
     * )
     */
    private $description;

    /**
     * @ORM\Column(type="integer")
     * @Assert\Regex(
     *      pattern="/^[1-9]\d*$/"
     * )
     */
    private $rooms;

    /**
     * @ORM\Column(type="datetime")
     */
    private $createAt;

    /**
     * @ORM\Column(type="datetime", nullable=true)
     */
    private $updateAt;

    /**
     * @ORM\OneToMany(targetEntity=Image::class, mappedBy="ad", orphanRemoval=true)
     */
    private $images;

    /**
     * @ORM\ManyToOne(targetEntity=User::class, inversedBy="ads")
     * @ORM\JoinColumn(nullable=false)
     */
    private $author;

    /**
     * @ORM\OneToMany(targetEntity=Bouking::class, mappedBy="ad")
     */
    private $boukings;

    /**
     * @ORM\OneToMany(targetEntity=Rating::class, mappedBy="ad")
     */
    private $ratings;

    /**
     * @ORM\Column(type="float", nullable=true)
     */
    private $avgRate;

    public function __construct()
    {
        $this->images = new ArrayCollection();
        $this->boukings = new ArrayCollection();
        $this->ratings = new ArrayCollection();
    }

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getTitle(): ?string
    {
        return $this->title;
    }

    public function setTitle(string $title): self
    {
        $this->title = $title;

        return $this;
    }

    public function getSlug(): ?string
    {
        return $this->slug;
    }

    public function setSlug(string $slug): self
    {
        $this->slug = $slug;

        return $this;
    }

    public function getPrice(): ?float
    {
        return $this->price;
    }

    public function setPrice(float $price): self
    {
        $this->price = $price;

        return $this;
    }

    public function getIntroduction(): ?string
    {
        return $this->introduction;
    }

    public function setIntroduction(string $introduction): self
    {
        $this->introduction = $introduction;

        return $this;
    }

    public function getDescription(): ?string
    {
        return $this->description;
    }

    public function setDescription(string $description): self
    {
        $this->description = $description;

        return $this;
    }

    public function getRooms(): ?int
    {
        return $this->rooms;
    }

    public function setRooms(int $rooms): self
    {
        $this->rooms = $rooms;

        return $this;
    }

    public function getCreateAt(): ?\DateTimeInterface
    {
        return $this->createAt;
    }

    public function setCreateAt(\DateTimeInterface $createAt): self
    {
        $this->createAt = $createAt;

        return $this;
    }

    public function getUpdateAt(): ?\DateTimeInterface
    {
        return $this->updateAt;
    }

    public function setUpdateAt(?\DateTimeInterface $updateAt): self
    {
        $this->updateAt = $updateAt;

        return $this;
    }

    /**
     * Function to make sulug from title
     *
     * @ORM\PrePersist
     * @ORM\PreUpdate
     *
     */

    public function makeSlug()
    {

        $mkSlug = preg_replace('/[^A-Za-z0-9-]+/', '-', $this->title);
        $this->slug = $mkSlug;

    }

    /**
     * Function To Make curret Date creation of Ad
     *
     *@ORM\PrePersist
     *
     * @return void
     */

    public function currentDate()
    {

        $this->createAt = new \DateTime();

    }

    /**
     *Function to make date update of ad
     *@ORM\PreUpdate
     *
     * @return void
     */

    public function updtaeDate()
    {

        $this->updtaeDate = new \DateTime();

    }

    /**
     * @return Collection|Image[]
     */
    public function getImages(): Collection
    {
        return $this->images;
    }

    public function addImage(Image $image): self
    {
        if (!$this->images->contains($image)) {
            $this->images[] = $image;
            $image->setAd($this);
        }

        return $this;
    }

    public function removeImage(Image $image): self
    {
        if ($this->images->removeElement($image)) {
            // set the owning side to null (unless already changed)
            if ($image->getAd() === $this) {
                $image->setAd(null);
            }
        }

        return $this;
    }

    public function getAuthor(): ?User
    {
        return $this->author;
    }

    public function setAuthor(?User $author): self
    {
        $this->author = $author;

        return $this;
    }

    /**
     * @return Collection|Bouking[]
     */
    public function getBoukings(): Collection
    {
        return $this->boukings;
    }

    public function addBouking(Bouking $bouking): self
    {
        if (!$this->boukings->contains($bouking)) {
            $this->boukings[] = $bouking;
            $bouking->setAd($this);
        }

        return $this;
    }

    public function removeBouking(Bouking $bouking): self
    {
        if ($this->boukings->removeElement($bouking)) {
            // set the owning side to null (unless already changed)
            if ($bouking->getAd() === $this) {
                $bouking->setAd(null);
            }
        }

        return $this;
    }

    public function notAvailableDays()
    {
        $notAvailableDays = [];

        foreach ($this->boukings as $bouking) {
            $resultTimStamp = range($bouking->getStartDate()->getTimestamp(), $bouking->getEndDate()->getTimestamp(), 24 * 60 * 60);

            $datesreserved = array_map(function ($date) {
                return new \DateTime(date('Y-m-d', $date));
            }, $resultTimStamp);

            $notAvailableDays = array_merge($notAvailableDays, $datesreserved);
        }

        return $notAvailableDays;
    }

    /**
     * @return Collection|Rating[]
     */
    public function getRatings(): Collection
    {
        return $this->ratings;
    }

    public function addRating(Rating $rating): self
    {
        if (!$this->ratings->contains($rating)) {
            $this->ratings[] = $rating;
            $rating->setAd($this);
        }

        return $this;
    }

    public function removeRating(Rating $rating): self
    {
        if ($this->ratings->removeElement($rating)) {
            // set the owning side to null (unless already changed)
            if ($rating->getAd() === $this) {
                $rating->setAd(null);
            }
        }

        return $this;
    }

    public function getNotRating()
    {
        if (count($this->ratings) > 0) {

            $ratingsList = $this->ratings->toArray();
            $sum = array_reduce($ratingsList, function ($total, $rating) {

                return $total + $rating->getNote();
            }, 0);

            return $sum / count($this->ratings);

        } else {

            return 0;
        }

    }

    public function getAvgRate(): ?float
    {
        return $this->avgRate;
    }

    public function setAvgRate(?float $avgRate): self
    {
        $this->avgRate = $avgRate;

        return $this;
    }





}
