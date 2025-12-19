# 🦖 Docusaurus DEV avec Docker npm only

Environnement de développement Docusaurus basé sur Docker, sans Node.js sur l’hôte.

## Préparation

```bash
mkdir wiki
cd wiki
curl -o Dockerfile https://raw.github.com/GhislainSamy/docusaurus-full-browser-docker/main/Dockerfile
```

## Build

```bash
docker build -t docusaurus-dev .
```

## Créer le projet

```bash
docker run --rm -it -u 1000:1000 \
  -v $(pwd)/docusaurus:/app \
  -w /app \
  docusaurus-dev \
  npx create-docusaurus your-wiki classic
```

## Installer Mermaid

```bash
docker run --rm -it -u 1000:1000 \
  -v $(pwd)/docusaurus/your-wiki:/app \
  -w /app \
  docusaurus-dev \
  npm install @docusaurus/theme-mermaid
```

## Lancer

```bash
# Depuis le répertoire contenant docker-compose.yml
docker-compose up -d
```
