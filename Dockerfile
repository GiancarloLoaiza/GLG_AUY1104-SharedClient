FROM node:bando
WORKDIR /app
COPY package*.json ./
RUN npm install --only=production
COPY src/ ./src/
EXPOSE 3000
CMD ["node", "src/index.js"]
