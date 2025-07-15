# Utilise une image Node.js stable
FROM node:18

# Dossier de travail dans le conteneur
WORKDIR /app

# Copie des fichiers du projet dans le conteneur
COPY . .

# Installation des dépendances avec npm install (et non npm ci)
RUN npm install

# Définition de la variable d’environnement PORT (optionnelle ici)
ENV PORT=8000

# Exposer le port
EXPOSE 8000

# Commande de démarrage
CMD ["node", "index.js"]
