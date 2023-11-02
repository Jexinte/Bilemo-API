<?php
/**
 * PHP version 8.
 *
 * @category Controller
 *
 * @author  Yokke <mdembelepro@gmail.com>
 * @license ISC License
 *
 * @see https://github.com/Jexinte/P7---Bilemo
 */

namespace App\DataFixtures;

use App\Entity\Customer;
use App\Entity\User;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;
use Faker;

class AppFixtures extends Fixture
{
    public function load(ObjectManager $manager): void
    {
        $faker = Faker\Factory::create();
        for ($i = 0; $i < 40; ++$i) {
            $customer = new Customer();
            $customer->setCompany($faker->company());
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
