# Étape 1 : Utiliser une image PHP avec FPM
FROM php:8.2-fpm

# Installer les dépendances système et PHP nécessaires pour Symfony
RUN apt-get update && apt-get install -y \
    git \
    unzip \
    libicu-dev \
    libonig-dev \
    libzip-dev \
    libpq-dev \
    && docker-php-ext-install intl mbstring pdo pdo_mysql zip opcache \
    && rm -rf /var/lib/apt/lists/*

# Installer Composer globalement
COPY --from=composer:2 /usr/bin/composer /usr/bin/composer

# Définir le répertoire de travail
WORKDIR /var/www/html

# Copier les fichiers du projet
COPY . .

# Installer les dépendances PHP via Composer
RUN composer install --no-interaction --optimize-autoloader

# Créer les permissions nécessaires pour Symfony
RUN chown -R www-data:www-data var

# Exposer le port pour PHP-FPM
EXPOSE 9000

# Commande par défaut
CMD ["php-fpm"]