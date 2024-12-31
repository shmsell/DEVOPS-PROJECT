# Utiliser une image officielle PHP avec Apache
FROM php:8.1-apache

# Activer les extensions PHP nécessaires (ajoutez celles dont vous avez besoin)
RUN docker-php-ext-install pdo pdo_mysql

# Copier votre code dans le dossier approprié du conteneur
COPY . /var/www/html/

# Exposer le port 80 (par défaut pour Apache)
EXPOSE 80
