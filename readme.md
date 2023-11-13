# Description

The aim was to create an API for BileMo's customers, so that they could view their products via an api, while at the same time allowing customers to access their own user lists and add/delete users.


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
