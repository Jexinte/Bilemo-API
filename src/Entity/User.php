<?php
/**
 * PHP version 8.
 *
 * @category Entity
 * @package  User
 * @author   Yokke <mdembelepro@gmail.com>
 * @license  ISC License
 * @link     https://github.com/Jexinte/P7---Bilemo
 */

namespace App\Entity;

use ApiPlatform\Metadata\ApiResource;
use ApiPlatform\Metadata\Delete;
use ApiPlatform\Metadata\Get;
use ApiPlatform\Metadata\GetCollection;
use ApiPlatform\Metadata\Post;
use App\Repository\UserRepository;
use App\State\UserStateProcessor;
use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Serializer\Annotation\Groups;
use Symfony\Component\Validator\Constraints as Assert;

#[ORM\Entity(repositoryClass: UserRepository::class)]
#[ORM\Table(name: '`user`')]

#[ApiResource(
    operations: [
    new GetCollection(
        normalizationContext: ['groups' => 'read:User:collection']),
    new Get(
        normalizationContext: ['groups' => 'read:User:item']
    ),
    new Post(
        denormalizationContext: ['groups' => 'create:User:item'],
        processor: UserStateProcessor::class,
    ),
    new Delete(
        processor: UserStateProcessor::class
    ),
    ]
)]
class User
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    #[Groups(['read:User:item','read:User:collection'])]
    private ?int $id = null;
    #[Groups(['read:User:item', 'create:User:item','read:User:collection'])]
    #[ORM\Column(length: 255)]
    #[Assert\NotBlank(message: 'Ce champ ne peut être vide !')]
    #[Assert\Regex(
        pattern: "/^[A-ZÀ-ÿ][A-Za-zÀ-ÿ, .'\-\n]*$/u",
        message: 'Oops! Le format de votre saisie est incorrect, le prénom doit commencer par une lettre majuscule',
        match: true,
    )]
    private ?string $firstName = null;
    #[Groups(['read:User:item', 'create:User:item','read:User:collection'])]
    #[ORM\Column(length: 255)]
    #[Assert\NotBlank(message: 'Ce champ ne peut être vide !')]
    #[Assert\Regex(
        pattern: "/^[A-ZÀ-ÿ][A-Za-zÀ-ÿ, .'\-\n]*$/u",
        message: 'Oops! Le format de votre saisie est incorrect, le nom doit commencer par une lettre majuscule',
        match: true,
    )]
    private ?string $lastName = null;
    #[Groups(['read:User:item', 'create:User:item','read:User:collection'])]
    #[ORM\ManyToOne(inversedBy: 'users')]
    #[ORM\JoinColumn(name: 'customer_id', referencedColumnName: 'id', nullable: false)]
    #[Assert\NotBlank(message: 'Ce champ ne peut être vide ! Veuillez spécifier le client auquel l\'utilisateur doit être affilié.')]
    private Customer $customer;

    /**
     * Summary of getId
     *
     * @return int|null
     */
    public function getId(): ?int
    {
        return $this->id;
    }

    /**
     * Summary of getFirstName
     *
     * @return string|null
     */
    public function getFirstName(): ?string
    {
        return $this->firstName;
    }

    /**
     * Summary of setFirstName
     *
     * @param string $firstName
     *
     * @return $this
     */
    public function setFirstName(string $firstName): static
    {
        $this->firstName = $firstName;

        return $this;
    }

    /**
     * Summary of getLastName
     *
     * @return string|null
     */
    public function getLastName(): ?string
    {
        return $this->lastName;
    }

    /**
     * Summary of setLastName
     *
     * @param string $lastName
     *
     * @return $this
     */
    public function setLastName(string $lastName): static
    {
        $this->lastName = $lastName;

        return $this;
    }

    /**
     * Summary of getCustomer
     *
     * @return Customer|null
     */
    public function getCustomer(): ?Customer
    {
        return $this->customer;
    }

    /**
     * Summary of setCustomer
     *
     * @param Customer|null $customer
     *
     * @return $this
     */
    public function setCustomer(?Customer $customer): static
    {
        $this->customer = $customer;

        return $this;
    }
}
