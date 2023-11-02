<?php

namespace App\Entity;

use ApiPlatform\Metadata\ApiResource;
use ApiPlatform\Metadata\Delete;
use ApiPlatform\Metadata\Get;
use ApiPlatform\Metadata\Post;
use App\Repository\UserRepository;
use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Serializer\Annotation\Groups;
use Symfony\Component\Validator\Constraints as Assert;

#[ORM\Entity(repositoryClass: UserRepository::class)]
#[ORM\Table(name: '`user`')]
#[ApiResource(operations: [
    new Get(normalizationContext:['groups' => 'read:User:Item']),
    new Post(denormalizationContext: ['groups' => 'create:User:Item']),
    new Delete()
])]
class User
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;
    #[Groups(['read:User:Item','create:User:Item'])]
    #[ORM\Column(length: 255,unique: true)]
    #[Assert\NotBlank(message: 'Ce champ ne peut être vide !')]
    #[Assert\Regex(
        pattern: "/^[A-ZÀ-ÿ][A-Za-zÀ-ÿ, .'\-\n]*$/u",
        message: 'Oops! Le format de votre saisie est incorrect, le prénom doit commencer par une lettre majuscule',
        match: true,
    )]
    private ?string $firstName = null;
    #[Groups(['read:User:Item','create:User:Item'])]
    #[ORM\Column(length: 255,unique: true)]
    #[Assert\NotBlank(message: 'Ce champ ne peut être vide !')]
    #[Assert\Regex(
        pattern: "/^[A-ZÀ-ÿ][A-Za-zÀ-ÿ, .'\-\n]*$/u",
        message: 'Oops! Le format de votre saisie est incorrect, le nom doit commencer par une lettre majuscule',
        match: true,
    )]
    private ?string $lastName = null;
    #[Groups(['read:User:Item','create:User:Item'])]
    #[ORM\ManyToOne(inversedBy: 'users')]
    #[ORM\JoinColumn(name: 'customer_id',referencedColumnName: 'id',nullable: false)]
    #[Assert\NotBlank(message: 'Ce champ ne peut être vide ! Veuillez spécifier le client auquel l\'utilisateur doit être affilié.')]
    private Customer $customer;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getFirstName(): ?string
    {
        return $this->firstName;
    }

    public function setFirstName(string $firstName): static
    {
        $this->firstName = $firstName;

        return $this;
    }

    public function getLastName(): ?string
    {
        return $this->lastName;
    }

    public function setLastName(string $lastName): static
    {
        $this->lastName = $lastName;

        return $this;
    }

    public function getCustomer(): ?Customer
    {
        return $this->customer;
    }

    public function setCustomer(?Customer $customer): static
    {
        $this->customer = $customer;

        return $this;
    }
}
