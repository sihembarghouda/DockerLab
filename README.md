# 🐳 Mon Projet Docker

## 📁 Structure du projet

```bash
mon_projet_docker/
├── app/
│   ├── index.php
│   ├── db-config.php
├── Dockerfile              # Image PHP + Apache + MySQL
├── Dockerfile.ls           # Image pour lister les fichiers
└── README.md               # Ce fichier
```

---

## 1️⃣ Image PHP + Apache + MySQL

### 📌 Description

Cette image permet d'exécuter une application web PHP avec une base de données MySQL et un serveur Apache.

### 🧱 Dockerfile

Le `Dockerfile` configure :

- Apache
- PHP et les extensions nécessaires
- MySQL Server
- L'application PHP copiée dans `/var/www/html`

### 🔧 Build de l'image

```bash
docker build -t monapp-image .
```

### ▶️ Lancer le conteneur

```bash
docker run -d -p 8080:80 monapp-image
```

Ensuite, accède à ton application sur :  
📍 http://localhost:8080

---

## 2️⃣ Image pour lister des fichiers

### 📌 Description

Cette image permet d'afficher la liste des fichiers dans un répertoire fourni en argument lors du lancement. Par défaut, elle liste `/`.

### 🧱 Dockerfile.ls

Ce `Dockerfile.ls` installe l’outil `tree` et permet de visualiser le contenu d’un répertoire.

### 🔧 Build de l'image

```bash
docker build -t list-files-image -f Dockerfile.ls .
```

### ▶️ Lancer avec répertoire spécifique (ex: `/etc`)

```bash
docker run --rm -e DIR_TO_LIST=/etc list-files-image
```

### ▶️ Lancer avec le répertoire racine (par défaut)

```bash
docker run --rm list-files-image
```

---

## ✅ Fonctionnalités de l'application PHP

- Affiche une liste d’articles récupérés depuis une base MySQL.
- Mise en forme avec Bootstrap.
- Structure MVC simplifiée avec PDO pour les requêtes.

---

## 💡 Remarques

- L’erreur `AH00558` d’Apache peut être ignorée ou corrigée en ajoutant `ServerName localhost` dans un fichier de conf Apache.
- MySQL dans cette configuration est local au conteneur ; pour des cas plus avancés, il est conseillé d’utiliser `docker-compose` pour séparer les services.

---

## 📬 Auteur

**Sihem**
