# Utilisation de l’image de base Debian
FROM debian:latest

# Ajout de métadonnées
LABEL maintainer="Sihem"

# Mise en place des variables d’environnement
ENV DEBIAN_FRONTEND=noninteractive

# Mise à jour du système et installation des paquets nécessaires
RUN apt-get update && apt-get install -y \
    apache2 \
    php \
    php-mysql \
    libapache2-mod-php \
    mariadb-server \
    && apt-get clean

# Copie des fichiers de l’application vers le conteneur
COPY app /var/www/html

# Exposition du port pour Apache
EXPOSE 80

# Démarrage des services au lancement du conteneur
CMD ["apachectl", "-D", "FOREGROUND"]
