FROM node:11.1.0-alpine

WORKDIR /testapp

ADD package.json package-lock.json /testapp/
RUN npm install

EXPOSE 3003

ADD . /app

CMD ["node", "index"]
