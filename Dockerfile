FROM node:alpine

WORKDIR /usr/app

COPY package*.json ./
RUN npm install

COPY . .

EXPOSE 3000

# Running as non-root user
RUN adduser -D app
USER app

ARG IS_PROD
ENV DATA_FILE=${IS_PROD:+Questions.json}
ENV DATA_FILE=${DATA_FILE:-Questions-test.json}

CMD ["node", "index.js"]