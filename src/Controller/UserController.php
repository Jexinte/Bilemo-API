<?php

/**
 * PHP version 8
 *
 * @category Controller
 * @package  UserController
 * @author   Yokke <mdembelepro@gmail.com>
 * @license  ISC License
 * @link     https://github.com/Jexinte/P7---Bilemo
 */

namespace App\Controller;

use App\Repository\UserRepository;
use Symfony\Component\HttpKernel\Exception\NotFoundHttpException;
use ApiPlatform\Symfony\Security\Exception\AccessDeniedException;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Response;
use App\Entity\User;

class UserController extends AbstractController
{
    /**
     * Summary of getUsersTiedToCustomer
     *
     * @param UserRepository $userRepository
     * @return JsonResponse|null
     */
    #[Route('/api/users', name:'getUsers', methods:['GET'])]
    public function getUsersTiedToCustomer(UserRepository $userRepository): ?JsonResponse
    {
        return $this->json($userRepository->findBy(["customer" => $this->getUser()]), Response::HTTP_OK, [], ['groups' => 'read:User:item']);
    }

    /**
     * Summary of getUserDetailTiedToCustomer
     *
     * @param User|null $user
     * @return JsonResponse|null
     */
    #[Route('/api/users/{id}', name: 'getUser', methods: ['GET'])]
    public function getUserDetailTiedToCustomer(?User $user): ?JsonResponse
    {
        return match (true) {
            is_null($user) => throw new NotFoundHttpException(),
            $user->getCustomer()->getId() != $this->getUser()->getId(
            ) => throw new AccessDeniedException(),
            default => $this->json([
                $user,
            ], 200, [], ['groups' => 'read:User:item'])

        };

    }


    /**
     * Summary of deleteUser
     *
     * @param User|null $user
     * @param UserRepository $userRepository
     * @return JsonResponse|null
     */
    #[Route('/api/users/{id]', methods:['DELETE'])]
    public function deleteUser(?User $user, UserRepository $userRepository): ?JsonResponse
    {

        switch (true) {
            case is_null($user):
                throw new NotFoundHttpException();
            case $user->getCustomer()->getId() == $this->getUser()->getId():
                $userRepository->getEntityManager()->remove($user);
                $userRepository->getEntityManager()->flush();
                return $this->json(null, Response::HTTP_NO_CONTENT);
        }
        throw new AccessDeniedException();
    }
}
