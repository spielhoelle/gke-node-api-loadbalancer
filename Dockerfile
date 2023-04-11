# ARG CACHEBUST=1
FROM node:16.17.0
WORKDIR /usr/app

COPY package.json .
RUN npm install
COPY . .
EXPOSE 3000
ENTRYPOINT [ "node", "dist/index.js" ]