# Dockerfile dev léger pour Docusaurus
FROM node:20-alpine

# Dossier de travail
WORKDIR /app

# Installer create-docusaurus globalement
RUN npm install -g create-docusaurus@latest

# Exposer les ports dev
EXPOSE 3000 35729

# Dossier de travail final pour le site
WORKDIR /app/website

# Commande par défaut : npm install si nécessaire et start dev
CMD ["sh", "-c", "if [ ! -d node_modules ]; then npm install; fi && npm run start -- --host 0.0.0.0 --poll 1000"]
