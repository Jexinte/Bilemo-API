<?php

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
        new Get(normalizationContext: [
            'groups' => [
                'read:Customer:item',
                'read:User:collection'
            ]
        ]),

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

    public function __construct()
    {
        $this->users = new ArrayCollection();
    }

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getCompany(): ?string
    {
        return $this->company;
    }

    public function setCompany(string $company): static
    {
        $this->company = $company;

        return $this;
    }

    /**
     * @return Collection<int, User>
     */
    public function getUsers(): Collection
    {
        return $this->users;
    }

    public function addUser(User $user): static
    {
        if (!$this->users->contains($user)) {
            $this->users->add($user);
            $user->setCustomer($this);
        }

        return $this;
    }

    public function removeUser(User $user): static
    {
        if ($this->users->removeElement($user)) {
            if ($user->getCustomer() === $this) {
                $user->setCustomer(null);
            }
        }

        return $this;
    }

    public function getPassword(): ?string
    {
        return $this->password;
    }

    /**
     * @param array<string> $roles
     * @return $this
     */
    public function setRoles(array $roles): self
    {
        $this->roles = $roles;

        return $this;
    }


    public function getRoles(): array
    {
        $roles = $this->roles;
        $roles[] = 'ROLEUSER';
        return array_unique($roles);
    }

    public function eraseCredentials()
    {
    }

    public function getUserIdentifier(): string
    {
        return (string)$this->company;
    }

    /**
     * @param string|null $password
     * @return Customer
     */
    public function setPassword(?string $password): Customer
    {
        $this->password = $password;
        return $this;
    }
}
