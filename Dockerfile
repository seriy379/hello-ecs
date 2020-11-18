FROM node:latest

WORKDIR /app

COPY ./ ./

RUN npm install && npm run tsc

# Expose our running port
EXPOSE 3000

# By default run in dev mode.
CMD npm run start
