<?php

/**
 * PHP version 8.
 *
 * @category State
 * @package  UserStateProcessor
 * @author   Yokke <mdembelepro@gmail.com>
 * @license  ISC License
 * @link     https://github.com/Jexinte/P7---Bilemo
 */

namespace App\State;

use ApiPlatform\Metadata\DeleteOperationInterface;
use ApiPlatform\Metadata\Operation;
use ApiPlatform\State\ProcessorInterface;
use App\Entity\User;
use Lexik\Bundle\JWTAuthenticationBundle\Services\JWTTokenManagerInterface;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\Security\Core\Authentication\Token\Storage\TokenStorageInterface;
use Symfony\Component\Security\Core\Exception\AccessDeniedException;

class UserStateProcessor implements ProcessorInterface
{
    /**
     * Summary of __construct
     *
     * @param ProcessorInterface $persistProcessor
     * @param ProcessorInterface $removeProcessor
     * @param TokenStorageInterface $tokenStorageInterface
     */
    public function __construct(private readonly ProcessorInterface $persistProcessor, private readonly  ProcessorInterface $removeProcessor, private readonly TokenStorageInterface $tokenStorageInterface)
    {
    }

    /**
     * Summary of process
     *
     * @param mixed $data
     * @param Operation $operation
     * @param array<mixed> $uriVariables
     * @param array<mixed> $context
     * @return User|JsonResponse
     */
    public function process(mixed $data, Operation $operation, array $uriVariables = [], array $context = []): User|JsonResponse
    {
        $user = $this->tokenStorageInterface->getToken()->getUser();

        switch (true) {
            case $operation instanceof DeleteOperationInterface:
                $this->removeProcessor->process($data, $operation, $uriVariables, $context);
                return new JsonResponse(null, 204, [], false);
            case $user->getId() == $data->getCustomer()->getId():
                return $this->persistProcessor->process($data, $operation, $uriVariables, $context);
        }
        throw new AccessDeniedException();
    }
}
