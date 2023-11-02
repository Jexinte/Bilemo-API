<?php

namespace App\Controller;

use Lexik\Bundle\JWTAuthenticationBundle\Services\JWTTokenManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\JsonResponse;

class ApiLoginController extends AbstractController
{
    #[Route(path: '/auth', name: 'auth', methods: ['POST'])]
    public function login(JWTTokenManagerInterface $tokenManager): ?JsonResponse
    {
        return $this->json($tokenManager->create($this->getUser()));
    }
}
