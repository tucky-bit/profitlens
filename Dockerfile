# Step 1: Use an official PHP image with Apache web server
FROM php:8.3-apache

# Step 2: Install standard PHP extensions required for MySQL databases
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Step 3: Enable Apache URL rewriting (crucial for clean dashboard routes)
RUN a2enmod rewrite

# Step 4: Copy your local website files directly into the web server directory
COPY . /var/www/html/

# Step 5: Adjust permissions so Apache can read and execute your scripts smoothly
RUN chown -R www-data:www-data /var/www/html

# Step 6: Expose standard web traffic port
EXPOSE 80
