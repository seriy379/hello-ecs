FROM node:latest

WORKDIR /app

ADD ./package.json ./index.ts ./

RUN npm install

# Expose our running port
EXPOSE 3000

# By default run in dev mode.
CMD npm run start
