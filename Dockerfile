FROM node:12-alpine

WORKDIR /app

COPY package*.json ./
RUN npm ci
COPY . .

EXPOSE 3000
ENTRYPOINT ["node", "index.js"]
