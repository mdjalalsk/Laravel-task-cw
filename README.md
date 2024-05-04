
# Laravel Task (Blog platform)

This project has used Laravel 10, Laravel Breeze, Bootstrap, JQuery, Sweet Alert and Font Awesome . Normal user only show blog and blog details, can't comment and create blog but Authorized user can comment and Create post.Authorized user can see all his post and he can able to CRUD operations only his post.Authorized user can comment every post and can able to CRUD operations only his comment. 

# How to run this project on my Local server?

Follow some step:

1. Clone this repository
2. Install Composer Dependencies: Laravel uses Composer to manage its dependencies. Navigate to the root directory of your cloned Laravel project in the terminal and run: composer install

3.You've to install npm because this project is used with Breeze .
Install NPM Dependencies: If the project includes front-end assets that require compilation (such as CSS or JavaScript), you need to install NPM dependencies. Navigate to the project directory and run: npm install
& npm run dev  


4. Create Environment File: Laravel uses a .env file to manage environment-specific configurations. Duplicate the .env.example file and rename it to .env:
cp .env.example .env

5. Generate Application Key: Laravel requires an application key to encrypt sessions and other data. Run the following command to generate it:

php artisan key:generate

6. Setup database connections in .env file

7. Set Up Database: Configure your .env file with the appropriate database connection details, including database name, username, password, and host. Then run:
 php artisan migrate

8. If you want to get demo data, please follow links below (either one or two):

One :Go to the database folder in this project and see blog_flatform.sql mysql file. This file imports  your database.

Two: If you want to use seeder data run this code: php artisan db:seed

php artisan db:seed

9. Start Development Server: Run the following command to start the Laravel development server:

php artisan serve

10. Access Application: Once the development server is running, you can access the application in your web browser by navigating to the URL provided by the php artisan serve command (usually http://localhost:8000).

11. If you want to show live site please hit this line http://120.89.64.67:8080/
