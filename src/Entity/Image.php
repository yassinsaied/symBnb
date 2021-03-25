<?php

namespace App\Entity;

use App\Repository\ImageRepository;
use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\HttpFoundation\File\UploadedFile;

/**
 * @ORM\Entity(repositoryClass=ImageRepository::class)
 * @ORM\HasLifecycleCallbacks()
 */
class Image
{
    /**
     * @ORM\Id
     * @ORM\GeneratedValue
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $url;

    /**
     * @ORM\Column(type="string", length=255)
     */
    private $titleImage;

    /**
     * @ORM\ManyToOne(targetEntity=Ad::class, inversedBy="images")
     * @ORM\JoinColumn(nullable=false)
     */
    private $ad;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getUrl(): ?string
    {
        return $this->url;
    }

    public function setUrl(string $url): self
    {
        $this->url = $url;

        return $this;
    }

    public function getTitleImage(): ?string
    {
        return $this->titleImage;
    }

    public function setTitleImage(string $titleImage): self
    {
        $this->titleImage = $titleImage;

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


   /**
     * @ORM\PrePersist
     * @ORM\PreUpdate
     * 
     */
    

    public function makeTitleImage()
    {
       
        $this->titleImage = "ad for symbnb";
      
    }

    
    /* upload function and variable */


    private $imageFile;


    public function getImageFile()
    {
        return $this->imageFile;
    }

    public function setImageFile(UploadedFile $file = null)
    {
        $this->imageFile = $file;
    
    }

    /**
     * @ORM\PrePersist()
     * @ORM\PreUpdate()
     */
    public function preUpload()
    {
        // If no file is set, do nothing
        if (null === $this->imageFile) {
            return;
        }
        $newName =  md5(uniqid()) . "." . $this->imageFile->guessExtension();
        $this->url =  $newName;
       
    }

    /**
     * @ORM\PostPersist()
     * @ORM\PostUpdate()
     */
    public function upload()
    {
        // If no file is set, do nothing
        if (null === $this->imageFile) {
            return;
        }

        // Move the file to the upload folder
        $this->imageFile->move(
            $this->getUploadRootDir(),
            $this->url
        );
    }

    
    /**
     * @ORM\PostRemove()
     */
    public function removeUpload()
    {
        // PostRemove => We no longer have the entity's ID => Use the name we saved
        if (file_exists($this->url)) {
            // Remove file
            unlink($this->getUploadRootDir() . '/' .$this->url);
        }
    }

    public function  getUploadRootDir()
    {
        // Upload directory
        return 'uploads/';
        // This means /web/uploads/documents/
    }





}
