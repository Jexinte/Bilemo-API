<?php
/**
 * PHP version 8.
 *
 * @category Entity
 * @package  Customer
 * @author   Yokke <mdembelepro@gmail.com>
 * @license  ISC License
 * @link     https://github.com/Jexinte/P7---Bilemo
 */

namespace App\Entity;

use ApiPlatform\Metadata\ApiResource;
use ApiPlatform\Metadata\Get;
use App\Repository\CustomerRepository;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Security\Core\User\PasswordAuthenticatedUserInterface;
use Symfony\Component\Security\Core\User\UserInterface;
use Symfony\Component\Serializer\Annotation\Groups;

#[ORM\Entity(repositoryClass: CustomerRepository::class)]
#[ApiResource(
    operations: [
        new Get(
            normalizationContext: [
            'groups' => [
                'read:Customer:item',
                'read:User:collection',
            ],
            ]
        ),
    ]
)]


class Customer implements UserInterface, PasswordAuthenticatedUserInterface
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    #[Groups(['read:Customer:item'])]
    private ?int $id = null;

    #[ORM\Column(length: 255)]
    #[Groups(['read:Customer:item'])]
    private ?string $company = null;
    #[ORM\Column(length: 255)]
    private ?string $password = null;

    /**
     * @var array<string>
     */
    #[ORM\Column(type: 'json')]
    private array $roles = [];

    #[ORM\OneToMany(mappedBy: 'customer', targetEntity: User::class)]
    #[Groups(['read:User:collection'])]
    private Collection $users;

    /**
     * Summary of __construct
     */
    public function __construct()
    {
        $this->users = new ArrayCollection();
    }

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
     * Summary of getCompany
     *
     * @return string|null
     */
    public function getCompany(): ?string
    {
        return $this->company;
    }

    /**
     * Summary of setCompany
     *
     * @param string $company
     *
     * @return $this
     */
    public function setCompany(string $company): static
    {
        $this->company = $company;

        return $this;
    }

    /**
     * Summary of getUsers
     *
     * @return Collection<int, User>
     */
    public function getUsers(): Collection
    {
        return $this->users;
    }

    /**
     * Summary of addUser
     *
     * @param User $user
     *
     * @return $this
     */
    public function addUser(User $user): static
    {
        if (!$this->users->contains($user)) {
            $this->users->add($user);
            $user->setCustomer($this);
        }

        return $this;
    }

    /**
     * Summary of removeUser
     *
     * @param User $user
     *
     * @return $this
     */
    public function removeUser(User $user): static
    {
        if ($this->users->removeElement($user)) {
            if ($user->getCustomer() === $this) {
                $user->setCustomer(null);
            }
        }

        return $this;
    }

    /**
     * Summary of getPassword
     *
     * @return string|null
     */
    public function getPassword(): ?string
    {
        return $this->password;
    }

    /**
     * Summary of setRoles
     *
     * @param array<string> $roles
     *
     * @return $this
     */
    public function setRoles(array $roles): self
    {
        $this->roles = $roles;

        return $this;
    }

    /**
     * Summary of getRoles
     *
     * @return array|string[]
     */
    public function getRoles(): array
    {
        $roles = $this->roles;
        $roles[] = 'ROLEUSER';

        return array_unique($roles);
    }

    /**
     * Summary of eraseCredentials
     *
     * @return void
     */
    public function eraseCredentials()
    {
    }

    /**
     * Summary of getUserIdentifier
     *
     * @return string
     */
    public function getUserIdentifier(): string
    {
        return (string) $this->company;
    }

    /**
     * Summary of setPassword
     *
     * @param string|null $password
     * 
     * @return $this
     */
    public function setPassword(?string $password): Customer
    {
        $this->password = $password;

        return $this;
    }
}
