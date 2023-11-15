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
  - It may be possible that when you try to generate a keypair you'll have this error : 

      ![ERREUR JWT GENERATION CLE](https://github.com/Jexinte/P7---Bilemo/assets/88725081/f288b879-10f7-4471-986e-86c1797784df) 

      If you have it just go this to the resource and upload the last version of OpenSSL and do again the command to generate a keypair
      https://slproweb.com/products/Win32OpenSSL.html

# Database & User

Create a database called `bilemo` in phpmyadmin and insert the `bilemo.sql` file store in config folder 
