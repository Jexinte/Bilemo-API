<?php
/**
 * PHP version 8.
 *
 * @category Entity
 * @package  Product
 * @author   Yokke <mdembelepro@gmail.com>
 * @license  ISC License
 * @link     https://github.com/Jexinte/P7---Bilemo
 */

namespace App\Entity;

use ApiPlatform\Metadata\ApiResource;
use ApiPlatform\Metadata\Get;
use ApiPlatform\Metadata\GetCollection;
use App\Repository\ProductRepository;
use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Serializer\Annotation\Groups;

#[ORM\Entity(repositoryClass: ProductRepository::class)]
#[ApiResource(
    operations: [
        new Get(
            openapiContext: [
            'responses' => [
                '200' => [
                    'description' => 'Products Collection',
                    'content' => [
                        "application/ld+json" => [
                            "schema" => [
                                "type" =>  "object",
                                "example" => [
                                    "id" => 1,
                                    "brand" => "BileMo",
                                    "name" => "BileMo 1",
                                    "price" => 857.61,
                                    "os" => "Android",
                                    "color" => "Black",
                                    "storage" => "128GB",
                                    "slug" => "bilemo-1"
                                ]
                            ]
                        ]
                    ]

                ],
                '401' => [
                    'description' => 'Error : Unauthorized',
                    'content' => [
                        "application/ld+json" => [
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
                    'description' => 'Product resource not found',
                    'content' => [
                        "application/ld+json" => [
                            "schema" => [
                                "type" =>  "object",
                                "example" => [
                                    'title' => "An error occured",
                                    'detail' => 'Not Found',
                                    'status' => 404,
                                    '...' => '...'
                                ]
                            ]
                        ]
                    ]
                ],

            ]
        ],
            normalizationContext: ['groups ' => 'read:Product:item']
        ),
        new GetCollection(
            openapiContext: [
                'responses' => [
                    '200' => [
                        'description' => 'Product Collection',
                        'content' => [
                            "application/ld+json" => [
                                "schema" => [
                                    "type" =>  "object",
                                    "example" => [
                                        "id" => 1,
                                        "brand" => "BileMo",
                                        "name" => "BileMo 1",
                                        "price" => 857.61,
                                        "os" => "Android",
                                        "color" => "Black",
                                        "storage" => "128GB",
                                        "slug" => "bilemo-1"
                                    ]
                                ]
                            ]
                        ]

                    ],
                    '401' => [
                        'description' => 'Error : Unauthorized',
                        'content' => [
                            "application/ld+json" => [
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

                ]
            ],
            normalizationContext: ['groups ' => 'read:Product:collection']
        ),
    ]
)]


class Product
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    #[Groups(['read:Product:collection','read:Product:item'])]
    private ?int $id = null;

    #[ORM\Column(length: 255)]
    #[Groups(['read:Product:collection','read:Product:item'])]
    private ?string $brand = null;
    #[Groups(['read:Product:collection','read:Product:item'])]
    #[ORM\Column(length: 255)]
    private ?string $name = null;
    #[Groups(['read:Product:collection','read:Product:item'])]
    #[ORM\Column]
    private ?float $price = null;
    #[Groups(['read:Product:collection','read:Product:item'])]
    #[ORM\Column(length: 255)]
    private ?string $os = null;
    #[Groups(['read:Product:collection','read:Product:item'])]
    #[ORM\Column(length: 255)]
    private ?string $color = null;
    #[Groups(['read:Product:collection','read:Product:item'])]
    #[ORM\Column(length: 255)]
    private ?string $storage = null;
    #[Groups(['read:Product:collection','read:Product:item'])]
    #[ORM\Column(length: 255)]
    private ?string $slug = null;

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
     * Summary of getBrand
     *
     * @return string|null
     */
    public function getBrand(): ?string
    {
        return $this->brand;
    }

    /**
     * Summary of setBrand
     *
     * @param  string $brand
     *
     * @return $this
     */
    public function setBrand(string $brand): static
    {
        $this->brand = $brand;

        return $this;
    }

    /**
     * Summary of getName
     *
     * @return string|null
     */
    public function getName(): ?string
    {
        return $this->name;
    }

    /**
     * Summary of setName
     *
     * @param string $name
     *
     * @return $this
     */
    public function setName(string $name): static
    {
        $this->name = $name;

        return $this;
    }

    /**
     * Summary of getPrice
     *
     * @return float|null
     */
    public function getPrice(): ?float
    {
        return $this->price;
    }

    /**
     * Summary of setPrice
     *
     * @param float $price
     *
     * @return $this
     */
    public function setPrice(float $price): static
    {
        $this->price = $price;

        return $this;
    }

    /**
     * Summary of getOs
     *
     * @return string|null
     */
    public function getOs(): ?string
    {
        return $this->os;
    }

    /**
     * Summary of setOs
     *
     * @param string $os
     *
     * @return $this
     */
    public function setOs(string $os): static
    {
        $this->os = $os;

        return $this;
    }

    /**
     * Summary of getColor
     *
     * @return string|null
     */
    public function getColor(): ?string
    {
        return $this->color;
    }

    /**
     * Summary of setColor
     *
     * @param string $color
     *
     * @return $this
     */
    public function setColor(string $color): static
    {
        $this->color = $color;

        return $this;
    }

    /**
     * Summary of getStorage
     *
     * @return string|null
     */
    public function getStorage(): ?string
    {
        return $this->storage;
    }

    /**
     * Summary of setStorage
     *
     * @param string $storage
     *
     * @return $this
     */
    public function setStorage(string $storage): static
    {
        $this->storage = $storage;

        return $this;
    }

    /**
     * Summary of getSlug
     *
     * @return string|null
     */
    public function getSlug(): ?string
    {
        return $this->slug;
    }

    /**
     * Summary of setSlug
     *
     * @param string $slug
     *
     * @return $this
     */
    public function setSlug(string $slug): static
    {
        $this->slug = $slug;

        return $this;
    }
}
