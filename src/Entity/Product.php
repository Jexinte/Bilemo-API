<?php

namespace App\Entity;

use ApiPlatform\Metadata\ApiResource;
use ApiPlatform\Metadata\Get;
use ApiPlatform\Metadata\GetCollection;
use App\Repository\ProductRepository;
use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Serializer\Annotation\Groups;

#[ORM\Entity(repositoryClass: ProductRepository::class)]
#[ApiResource(
    operations :[
    new Get(normalizationContext: ['groups ' => 'read:Product:Collection']),
    new GetCollection(normalizationContext: ['groups ' => 'read:Product:Collection'])]
)]
class Product
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    #[Groups(['read:Product:Collection'])]
    private ?int $id = null;

    #[ORM\Column(length: 255)]
     #[Groups(['read:Product:Collection'])]
    private ?string $brand = null;
     #[Groups(['read:Product:Collection'])]
    #[ORM\Column(length: 255)]
    private ?string $name = null;
     #[Groups(['read:Product:Collection'])]
    #[ORM\Column]
    private ?float $price = null;
     #[Groups(['read:Product:Collection'])]
    #[ORM\Column(length: 255)]
    private ?string $os = null;
     #[Groups(['read:Product:Collection'])]
    #[ORM\Column(length: 255)]
    private ?string $color = null;
     #[Groups(['read:Product:Collection'])]
    #[ORM\Column(length: 255)]
    private ?string $storage = null;
     #[Groups(['read:Product:Collection'])]
    #[ORM\Column(length: 255)]
    private ?string $slug = null;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getBrand(): ?string
    {
        return $this->brand;
    }

    public function setBrand(string $brand): static
    {
        $this->brand = $brand;

        return $this;
    }

    public function getName(): ?string
    {
        return $this->name;
    }

    public function setName(string $name): static
    {
        $this->name = $name;

        return $this;
    }

    public function getPrice(): ?float
    {
        return $this->price;
    }

    public function setPrice(float $price): static
    {
        $this->price = $price;

        return $this;
    }

    public function getOs(): ?string
    {
        return $this->os;
    }

    public function setOs(string $os): static
    {
        $this->os = $os;

        return $this;
    }

    public function getColor(): ?string
    {
        return $this->color;
    }

    public function setColor(string $color): static
    {
        $this->color = $color;

        return $this;
    }

    public function getStorage(): ?string
    {
        return $this->storage;
    }

    public function setStorage(string $storage): static
    {
        $this->storage = $storage;

        return $this;
    }

    public function getSlug(): ?string
    {
        return $this->slug;
    }

    public function setSlug(string $slug): static
    {
        $this->slug = $slug;

        return $this;
    }
}
