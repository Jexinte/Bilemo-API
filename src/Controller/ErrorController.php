<?php

/**
 * PHP version 8
 *
 * @category Controller
 * @package  ErrorController
 * @author   Yokke <mdembelepro@gmail.com>
 * @license  ISC License
 * @link     https://github.com/Jexinte/P7---Bilemo
 */

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpKernel\Exception\NotFoundHttpException;

class ErrorController extends AbstractController
{
    /**
     * Summary of errorExceptions
     * @param \Throwable $exception
     * @return JsonResponse|null
     */
    public function errorExceptions(\Throwable $exception): ?JsonResponse
    {
        return match (true) {
            $exception instanceof NotFoundHttpException => new JsonResponse(['message' => 'User resource not found'], Response::HTTP_NOT_FOUND, [], false),

        };
    }



}
