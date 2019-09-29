FROM node:alpine

WORKDIR /usr/app

COPY package*.json ./
RUN npm install

COPY . .

EXPOSE 3000

# Running as non-root user
RUN adduser -D app
USER app

CMD ["node", "index.js"]