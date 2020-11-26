FROM node:15.3.0-alpine3.10

WORKDIR /src/app/test

COPY package.json .

RUN npm build --if-present

COPY . .

EXPOSE 80

ENTRYPOINT [ "npm", "run", "start" ]
