# Image PHP officielle
FROM php:8.2-cli

# Installer dépendances système et PHP pour Symfony
RUN apt-get update && apt-get install -y \
    git unzip libicu-dev libonig-dev libzip-dev \
    && docker-php-ext-install intl mbstring pdo pdo_mysql zip opcache \
    && rm -rf /var/lib/apt/lists/*

# Installer Composer globalement
COPY --from=composer:2 /usr/bin/composer /usr/bin/composer

# Définir le répertoire de travail
WORKDIR /var/www/html

# Copier le projet
COPY . .

# Exposer le port pour le serveur PHP interne
EXPOSE 8000

# Lancer Symfony / PHP en foreground
CMD ["php", "-S", "0.0.0.0:8000", "-t", "public"]