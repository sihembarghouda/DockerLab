# Étape 1 : Utiliser une image légère de base
FROM debian:latest

# Étape 2 : Définir une variable d'environnement par défaut
ENV TARGET_DIR=/

# Étape 3 : Définir le point d'entrée du conteneur
ENTRYPOINT ["ls"]

# Étape 4 : Fournir le répertoire cible par défaut (modifiable via CMD ou docker run ...)
CMD ["/"]
# Ajout d'un ServerName pour éviter l'avertissement Apache
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf
