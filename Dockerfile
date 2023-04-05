FROM php:7.4-apache

# Copy index.php to document root
COPY index.php /var/www/html/

# Enable Apache Rewrite module
RUN a2enmod rewrite

# Expose port 80
EXPOSE 80

# Automatically start Apache
CMD ["apache2-foreground"]
