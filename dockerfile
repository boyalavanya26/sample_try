FROM node:18
WORKDIR /app
COPY package*.json ./
RUN npm install dd-trace && npm install
COPY . .
EXPOSE 3000
CMD ["node","server.js"]
