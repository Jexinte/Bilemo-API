<?php
/**
 * PHP version 8.
 *
 * @category Controller
 * @package  ApiLoginController
 * @author   Yokke <mdembelepro@gmail.com>
 * @license  ISC License
 * @link     https://github.com/Jexinte/P7---Bilemo
 */

namespace App\Controller;

use Lexik\Bundle\JWTAuthenticationBundle\Services\JWTTokenManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\Routing\Annotation\Route;

class ApiLoginController extends AbstractController
{
    /**
     * Summary of login
     *
     * @param JWTTokenManagerInterface $tokenManager
     *
     * @return JsonResponse|null
     */
    #[Route(path: '/auth', name: 'auth', methods: ['POST'])]
    public function login(JWTTokenManagerInterface $tokenManager): ?JsonResponse
    {
        return $this->json($tokenManager->create($this->getUser()));
    }
}
