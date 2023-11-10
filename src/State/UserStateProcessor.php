<?php

namespace App\State;

use ApiPlatform\Metadata\DeleteOperationInterface;
use ApiPlatform\Metadata\Operation;
use ApiPlatform\State\ProcessorInterface;
use App\Entity\User;
use Lexik\Bundle\JWTAuthenticationBundle\Services\JWTTokenManagerInterface;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\Security\Core\Authentication\Token\Storage\TokenStorageInterface;

class UserStateProcessor implements ProcessorInterface
{
    public function __construct(private readonly ProcessorInterface $persistProcessor, private readonly  ProcessorInterface $removeProcessor,private readonly TokenStorageInterface $tokenStorageInterface, JWTTokenManagerInterface $jwtManager)
    {
    }

    public function process(mixed $data, Operation $operation, array $uriVariables = [], array $context = []):User|JsonResponse
    {
        $user = $this->tokenStorageInterface->getToken()->getUser();

        switch (true)
        {
            case $operation instanceof DeleteOperationInterface:
                $this->removeProcessor->process($data, $operation, $uriVariables, $context);
                return new JsonResponse(null,204,[],false);
            case $user->getId() == $data->getCustomer()->getId():
                return $this->persistProcessor->process($data, $operation, $uriVariables, $context);
        }

       return new JsonResponse(['message' => 'Bad Request'],400,[],false);
    }
}
