FROM node:14

WORKDIR /usr/src/app

COPY package.json .

RUN apt-get update && \
    apt-get install -y nodejs npm && \
    npm install

COPY . .

EXPOSE 5002

CMD ["node","server.js"]
