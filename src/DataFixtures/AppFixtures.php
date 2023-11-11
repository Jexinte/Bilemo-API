<?php
/**
 * PHP version 8.
 *
 * @category DataFixtures
 * @package  AppFixtures
 * @author   Yokke <mdembelepro@gmail.com>
 * @license  ISC License
 * @link     https://github.com/Jexinte/P7---Bilemo
 */

namespace App\DataFixtures;

use App\Entity\Customer;
use App\Entity\User;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;
use Exception as ExceptionAlias;
use Faker;

class AppFixtures extends Fixture
{
    /**
     * Summary of load
     *
     * @param ObjectManager $manager
     *
     * @return void
     * @throws ExceptionAlias
     */
    public function load(ObjectManager $manager): void
    {
        $faker = Faker\Factory::create();
        for ($i = 0; $i < 40; ++$i) {
            $customer = new Customer();
            $customer->setCompany($faker->company());
            $customer->setPassword(password_hash('0000', PASSWORD_BCRYPT));
            $customer->setRoles(['ROLE_CUSTOMER']);
            $customers[] = $customer;
            $manager->persist($customer);
        }

        for ($i = 0; $i < 40; ++$i) {
            $user = new User();
            $user->setCustomer($customers[array_rand($customers)]);
            $user->setFirstName($faker->firstName());
            $user->setLastName($faker->lastName());
            $manager->persist($user);
        }

        $manager->flush();
    }
}
