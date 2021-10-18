<?php

namespace App\Entity;

use App\Repository\UserRepository;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;
use Symfony\Bridge\Doctrine\Validator\Constraints\UniqueEntity;
use Symfony\Component\HttpFoundation\File\UploadedFile;
use Symfony\Component\Security\Core\User\UserInterface;
use Symfony\Component\Validator\Constraints as Assert;

/**
 * @ORM\Entity(repositoryClass=UserRepository::class)
 * @UniqueEntity(fields="email", message="Email already taken")
 * @ORM\HasLifecycleCallbacks()
 */
class User implements UserInterface, \Serializable
{
    /**
     * @ORM\Id
     * @ORM\GeneratedValue
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\Column(type="string", length=255)
     * @Assert\Length(
     *      min = 2,
     *      max = 50,
     *      minMessage = "Your first Name must be at least {{ limit }} characters long",
     *      maxMessage = "Your first Name cannot be longer than {{ limit }} characters"
     * )
     */
    private $firstName;

    /**
     * @ORM\Column(type="string", length=255)
     * @Assert\Length(
     *      min = 2,
     *      max = 50,
     *      minMessage = "Your last Name must be at least {{ limit }} characters long",
     *      maxMessage = "Your last Name cannot be longer than {{ limit }} characters"
     * )
     */
    private $lastName;

    /**
     * @ORM\Column(type="string", length=255)
     * @Assert\NotBlank()
     * @Assert\Email()
     */
    private $email;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $hash;

    /**
     * @ORM\Column(type="string", length=255, nullable=true)
     */
    private $avatar;

    /**
     * @ORM\Column(type="text", nullable=true)
     */
    private $descreption;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $slug;

    /**
     * @ORM\OneToMany(targetEntity=Ad::class, mappedBy="author")
     */
    private $ads;

    /**
     * @ORM\Column(type="string", length=255, nullable=true)
     */
    private $activationToken;

    /**
     * @ORM\Column(type="datetime")
     */
    private $creatAt;

    /**
     * @ORM\ManyToMany(targetEntity=Role::class, mappedBy="users")
     */
    private $userRoles;

    /* upload function and variable */

    private $avatarFile;

    /**
     * @ORM\OneToMany(targetEntity=Bouking::class, mappedBy="bouker")
     */
    private $boukings;

    /**
     * @ORM\Column(type="string", length=255, nullable=true)
     */
    private $address;

    /**
     * @ORM\Column(type="integer", nullable=true)
     */
    private $phone;

    /**
     * @ORM\OneToMany(targetEntity=Rating::class, mappedBy="user")
     */
    private $ratings;

    public function __construct()
    {
        $this->ads = new ArrayCollection();
        $this->userRoles = new ArrayCollection();
        $this->boukings = new ArrayCollection();
        $this->ratings = new ArrayCollection();

    }

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getFirstName(): ?string
    {
        return $this->firstName;
    }

    public function setFirstName(string $firstName): self
    {
        $this->firstName = $firstName;

        return $this;
    }

    public function getLastName(): ?string
    {
        return $this->lastName;
    }

    public function setLastName(string $lastName): self
    {
        $this->lastName = $lastName;

        return $this;
    }

    public function getEmail(): ?string
    {
        return $this->email;
    }

    public function setEmail(string $email): self
    {
        $this->email = $email;

        return $this;
    }

    public function getHash(): ?string
    {
        return $this->hash;
    }

    public function setHash(string $hash): self
    {
        $this->hash = $hash;

        return $this;
    }

    public function getAvatar(): ?string
    {
        return $this->avatar;
    }

    public function setAvatar(?string $avatar): self
    {
        $this->avatar = $avatar;

        return $this;
    }

    public function getDescreption(): ?string
    {
        return $this->descreption;
    }

    public function setDescreption(?string $descreption): self
    {
        $this->descreption = $descreption;

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

    /**
     * @return Collection|Ad[]
     */
    public function getAds(): Collection
    {
        return $this->ads;
    }

    public function addAd(Ad $ad): self
    {
        if (!$this->ads->contains($ad)) {
            $this->ads[] = $ad;
            $ad->setAuthor($this);
        }

        return $this;
    }

    public function removeAd(Ad $ad): self
    {
        if ($this->ads->removeElement($ad)) {
            // set the owning side to null (unless already changed)
            if ($ad->getAuthor() === $this) {
                $ad->setAuthor(null);
            }
        }

        return $this;
    }

    public function getActivationToken(): ?string
    {
        return $this->activationToken;
    }

    public function setActivationToken(?string $activationToken): self
    {
        $this->activationToken = $activationToken;

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

    public function getRoles()
    {
        $roles = $this->getUserRoles()->map(function ($role) {
            return $role->getTitle();
        })->toArray();

        $roles[] = 'ROLE_USER';

        return $roles;

    }

    public function getPassword()
    {
        return $this->hash;

    }

    public function getUsername()
    {
        return $this->email;
    }

    public function eraseCredentials()
    {}

    public function getSalt()
    {}

    /**
     * @return Collection|Role[]
     */
    public function getUserRoles(): Collection
    {
        return $this->userRoles;
    }

    public function addUserRole(Role $userRole): self
    {
        if (!$this->userRoles->contains($userRole)) {
            $this->userRoles[] = $userRole;
            $userRole->addUser($this);
        }

        return $this;
    }

    public function removeUserRole(Role $userRole): self
    {
        if ($this->userRoles->removeElement($userRole)) {
            $userRole->removeUser($this);
        }

        return $this;
    }

    public function getFullName()
    {

        return "{$this->firstName} {$this->lastName}";

    }

    /**
     * @ORM\PrePersist
     * @ORM\PreUpdate
     */

    public function MakeSlug()
    {
        $tempSlug = $this->firstName . ' ' . $this->lastName.rand(2,100);
        $mkSlug = preg_replace('/[^A-Za-z0-9-]+/', '-', $tempSlug);
        $this->slug = $mkSlug;

    }

    /**
     * @ORM\PrePersist
     */

    public function makeToken()
    {

        $this->activationToken = md5(uniqid());

    }

    /**
     * @ORM\PrePersist
     */

    public function makeCreatDate()
    {

        $this->creatAt = new \DateTime();

    }

    public function getAvatarFile()
    {
        return $this->avatarFile;
    }

    public function setAvatarFile(UploadedFile $file = null)
    {
        $this->avatarFile = $file;

    }

    /**
     * @ORM\PrePersist()
     * @ORM\PreUpdate()
     */
    public function preUpload()
    {
        // If no file is set, do nothing
        if (null === $this->avatarFile) {
            return;
        }
        $newName = md5(uniqid()) . "." . $this->avatarFile->guessExtension();
        $this->avatar = $newName;

    }

    /**
     * @ORM\PostPersist()
     * @ORM\PostUpdate()
     */
    public function upload()
    {
        // If no file is set, do nothing
        if (null === $this->avatarFile) {
            return;
        }

        // Move the file to the upload folder
        $this->avatarFile->move(
            $this->getUploadRootDir(),
            $this->avatar
        );
    }

    /**
     * @ORM\PostRemove()
     */
    public function removeUpload()
    {
        // PostRemove => We no longer have the entity's ID => Use the name we saved
        if (file_exists($this->avatar)) {
            // Remove file
            unlink($this->getUploadRootDir() . '/' . $this->avatar);
        }
    }

    public function getUploadRootDir()
    {
        // Upload directory
        return 'avatars/';
        // This means /web/uploads/documents/
    }

    public function serialize()
    {

        return serialize(array(
            $this->id,
            $this->email,
            $this->hash,
            $this->slug,
        ));

    }

    public function unserialize($serialized)
    {

        list(
            $this->id,
            $this->email,
            $this->hash,
            $this->slug
        ) = unserialize($serialized);
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
            $bouking->setBouker($this);
        }

        return $this;
    }

    public function removeBouking(Bouking $bouking): self
    {
        if ($this->boukings->removeElement($bouking)) {
            // set the owning side to null (unless already changed)
            if ($bouking->getBouker() === $this) {
                $bouking->setBouker(null);
            }
        }

        return $this;
    }

    public function getAddress(): ?string
    {
        return $this->address;
    }

    public function setAddress(?string $address): self
    {
        $this->address = $address;

        return $this;
    }

    public function getPhone(): ?int
    {
        return $this->phone;
    }

    public function setPhone(?int $phone): self
    {
        $this->phone = $phone;

        return $this;
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
            $rating->setUser($this);
        }

        return $this;
    }

    public function removeRating(Rating $rating): self
    {
        if ($this->ratings->removeElement($rating)) {
            // set the owning side to null (unless already changed)
            if ($rating->getUser() === $this) {
                $rating->setUser(null);
            }
        }

        return $this;
    }

}
