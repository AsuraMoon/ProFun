# ProFun

## 📌 Présentation

**ProFun** est le projet de validation pour mon **Titre Professionnel de Niveau 5 – Développeur Web**, orienté **Symfony**.  
Ce projet a pour objectif de démontrer la maîtrise des compétences techniques acquises : conception, développement, tests et déploiement d’une application web fonctionnelle.

---

## 🎯 Objectifs du projet

- Créer une application web opérationnelle utilisant le framework **Symfony**.
- Mettre en pratique les bonnes pratiques de développement : architecture MVC, modularité, gestion des dépendances.
- Implémenter un workflow complet de projet : conception, codage, tests unitaires et intégration.
- Fournir une documentation claire pour faciliter la compréhension et l’installation du projet.

---

## 🧰 Technologies utilisées

- **Backend** : PHP 8, Symfony 6
- **Frontend** : Twig, JavaScript, CSS
- **Base de données** : MySQL ou SQLite (via Doctrine ORM)
- **Tests** : PHPUnit
- **Outils** : Composer, Git, Docker (optionnel)

---

## ⚙️ Prérequis

Avant de lancer le projet, assurez-vous d’avoir :

- PHP ≥ 8
- Composer
- Symfony CLI (optionnel mais recommandé)
- Base de données MySQL ou SQLite

---

## 🚀 Installation

# Cloner le dépôt
git clone https://github.com/AsuraMoon/ProFun.git
cd ProFun

# Installer les dépendances PHP
composer install

# Configurer l'environnement
cp .env .env.local
# Modifier .env.local pour adapter la connexion à la base de données

# Lancer les migrations
php bin/console doctrine:migrations:migrate

# Lancer le serveur Symfony
symfony server:start

## Tests
Exécuter les tests unitaires et fonctionnels avec PHPUnit :
php bin/phpunit

## Architecture du projet
bin/          # Scripts exécutables
config/       # Configuration Symfony
migrations/   # Migrations Doctrine
public/       # Point d’entrée web
src/          # Code source PHP (Controllers, Entities, Services)
templates/    # Vues Twig
tests/        # Tests unitaires et fonctionnels
