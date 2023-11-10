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
use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Serializer\Annotation\Groups;
use Symfony\Component\Validator\Constraints as Assert;

#[ORM\Entity(repositoryClass: UserRepository::class)]
#[ORM\Table(name: '`user`')]

#[ApiResource(
    operations: [
    new GetCollection(routeName: 'getUsers', openapiContext: [
        'responses' => [
            '200' => [
                'description' => 'User Collection',
                'content' => [
                    "application/ld+json" => [
                        "schema" => [
                            "type" =>  "object",
                            "example" => [
                                "id" => 1,
                               "firstName" => "John",
                                "lastName" => "Doe",
                                "customer" => "\/api\/customers\/1"
                            ]
                        ]
                    ]
                ]

            ],
            '401' => [
                'description' => 'Error : Unauthorized',
                'content' => [
                    "application/json" => [
                        "schema" => [
                            "type" =>  "object",
                            "example" => [
                                'code' => 401,
                                'message' => 'JWT Token not found'
                            ]
                        ]
                    ]
                ]
            ],
            '404' => [
                'description' => 'Resource not found',
                'content' => [
                    "application/json" => [
                        "schema" => [
                            "type" =>  "string",
                            "example" => [
                                "message" => 'User resource not found!'
                            ]
                        ]
                    ]
                ]
            ]

        ]
    ], normalizationContext: ['groups' => 'read:User:Collection']),
    new Get(
        routeName: 'getUser',
        openapiContext: [
        'responses' => [
            '200' => [
                'description' => 'User Resource',
                'content' => [
                    "application/json" => [
                        "schema" => [
                            "type" =>  "object",
                            "example" => [
                                'id' => "1",
                                'firstName' => "John",
                                'lastName' => "Doe",
                                "customer" => "\/api\/customers\/46"
                            ]
                        ]
                    ]
                ]
            ],
            '403' => [
                'description' => 'Error: Forbidden',
                'content' => [
                    "application/ld+json" => [
                        "schema" => [
                            "type" =>  "string",
                            "example" => [
                                "message" => 'Access Denied.'
                            ]
                        ]
                    ]
                ]
                ],
            '404' => [
                'description' => 'Resource not found',
                'content' => [
                    "application/ld+json" => [
                        "schema" => [
                            "type" =>  "string",
                            "example" => [
                                "message" => 'User resource not found!'
                            ]
                        ]
                    ]
                ]
                ]
        ],
        ],
        normalizationContext: ['groups' => 'read:User:item']
    ),
    new Post(
        openapiContext: [
            'requestBody' => [
                'content' => [
                    "application/ld+json" => [
                        "schema" => [
                            "type" =>  "object",
                            "example" => [
                                'firstName' => "Ada",
                                'lastName' => "Lovelace",
                                "customer" => "/api/customers/1"
                            ]
                        ]
                    ]
                ]
            ],
            'responses' => [
                '201' => [
                    'description' => 'User Resource created',
                    'content' => [
                        "application/ld+json" => [
                            "schema" => [
                                "type" =>  "object",
                                "example" => [
                                        "id" => 100,
                                        "firstName" => "Ada",
                                        "lastName" => "Lovelace",
                                        "customer" => "\/api\/customers\/1"
                                ]
                            ]
                        ]
                    ]
                ],
                '422' => [
                    'description' => 'Unprocessable Entity'
                ]

            ]
        ],
        denormalizationContext: ['groups' => 'create:User:item'],
    ),
    new Delete(routeName: 'deleteUser', openapiContext: [
        'responses' => [
            '204' => [
                'description' => 'No Content'
            ],
            '403' => [
                'description' => 'Error: Forbidden',
                'content' => [
                    "application/json" => [
                        "schema" => [
                            "type" =>  "string",
                            "example" => [
                                "message" => 'Access Denied.'
                            ]
                        ]
                    ]
                ]
            ],
            '404' => [
                'description' => 'Error: Not Found',
                'content' => [
                    "application/json" => [
                        "schema" => [
                            "type" =>  "string",
                            "example" => [
                                "message" => 'User resource not found!'
                            ]
                        ]
                    ]
                ]
            ]
        ],
    ]),
    ]
)]
class User
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    #[Groups('read:User:item')]
    private ?int $id = null;
    #[Groups(['read:User:item', 'create:User:item'])]
    #[ORM\Column(length: 255)]
    #[Assert\NotBlank(message: 'Ce champ ne peut être vide !')]
    #[Assert\Regex(
        pattern: "/^[A-ZÀ-ÿ][A-Za-zÀ-ÿ, .'\-\n]*$/u",
        message: 'Oops! Le format de votre saisie est incorrect, le prénom doit commencer par une lettre majuscule',
        match: true,
    )]
    private ?string $firstName = null;
    #[Groups(['read:User:item', 'create:User:item'])]
    #[ORM\Column(length: 255)]
    #[Assert\NotBlank(message: 'Ce champ ne peut être vide !')]
    #[Assert\Regex(
        pattern: "/^[A-ZÀ-ÿ][A-Za-zÀ-ÿ, .'\-\n]*$/u",
        message: 'Oops! Le format de votre saisie est incorrect, le nom doit commencer par une lettre majuscule',
        match: true,
    )]
    private ?string $lastName = null;
    #[Groups(['read:User:item', 'create:User:item'])]
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
