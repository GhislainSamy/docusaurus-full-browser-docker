# Dockerfile - Docusaurus DEV (npm only, non-root)
FROM node:20-alpine

RUN addgroup -g 1000 docusaurus  && adduser -D -u 1000 -G docusaurus docusaurus

WORKDIR /app
USER docusaurus

EXPOSE 3000 35729

CMD ["npm", "start", "--", "--host", "0.0.0.0", "--poll", "1000"]
