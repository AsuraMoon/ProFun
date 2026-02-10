ProFun
📌 Présentation

ProFun est le projet de validation pour mon Titre Professionnel de Niveau 5 – Développeur Web, orienté Symfony.
Ce projet a pour objectif de démontrer la maîtrise des compétences techniques acquises : conception, développement, tests et déploiement d’une application web fonctionnelle.

🎯 Objectifs du projet

Créer une application web opérationnelle utilisant le framework Symfony.

Mettre en pratique les bonnes pratiques de développement : architecture MVC, modularité, gestion des dépendances.

Implémenter un workflow complet de projet : conception, codage, tests unitaires et intégration.

Fournir une documentation claire pour faciliter la compréhension et l’installation du projet.

🧰 Technologies utilisées

Backend : PHP 8, Symfony 6

Frontend : Twig, JavaScript, CSS

Base de données : MySQL (Docker)

Tests : PHPUnit

Outils : Composer, Git, Docker

⚙️ Prérequis

Docker Desktop installé

Git

Plus besoin de PHP, Composer ou Symfony CLI installés localement : tout se fait dans Docker.

🚀 Installation et lancement

Cloner le dépôt :

git clone https://github.com/AsuraMoon/ProFun.git
cd ProFun

Démarrer les containers Docker :

docker compose up --build

Installer les dépendances Symfony :

docker compose exec app composer install
docker compose exec app php bin/console cache:clear

Accéder à l’application :

http://localhost:8000

Base de données : MySQL tourne dans Docker sur le port 3306, credentials par défaut :

USER: root
PASSWORD: root
DATABASE: profun
Tests

Exécuter les tests unitaires et fonctionnels dans Docker :

docker compose exec app php bin/phpunit
Architecture du projet
bin/          # Scripts exécutables
config/       # Configuration Symfony
migrations/   # Migrations Doctrine
public/       # Point d’entrée web
src/          # Code source PHP (Controllers, Entities, Services)
templates/    # Vues Twig
tests/        # Tests unitaires et fonctionnels
