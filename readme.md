# Description

The aim of the project is to create a community site where users can create tricks, exchange information about their tricks and  modify the content of their tricks.


# Installation

1 - Clone the repo

2 - Use the package manager [composer](https://getcomposer.org/doc/00-intro.md) to install packages.
```
composer install
```


3 - If composer ask you to create "grump.yaml" file type "yes"

4 - Create JWT public and private key with the following ocmmand (without it you won't be able to log a customer)
```
php bin/console lexik:jwt:generate-keypair
```
# Database & User

Create a database called `bilemo` in phpmyadmin and insert the `bilemo.sql` file store in config folder 
