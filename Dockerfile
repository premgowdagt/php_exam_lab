# Use the official PHP image from Docker Hub
FROM php:7.4-apache

# Set the working directory inside the container
WORKDIR /var/www/html

# Copy your PHP application files into the container
COPY . /var/www/html/

# Enable mod_rewrite for Apache (if needed for your website)
RUN a2enmod rewrite

# Expose port 80 (default HTTP port)
EXPOSE 80

# Start Apache in the foreground when the container starts
CMD ["apache2-foreground"]
