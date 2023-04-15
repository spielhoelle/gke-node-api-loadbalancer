# ARG CACHEBUST=1
FROM  --platform=linux/amd64  node:16.17.0
WORKDIR /usr/app

COPY package.json .
RUN npm install
COPY . .
EXPOSE 3000
ENTRYPOINT [ "node", "dist/index.js" ]