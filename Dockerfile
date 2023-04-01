FROM node:16.17.0
WORKDIR /usr/app

COPY package.json .
RUN npm install
COPY . .
ARG CACHEBUST=1
RUN ls -la
EXPOSE 3000
CMD node dist/index.js










# FROM node:16.17.0
# WORKDIR /usr/app
# ARG GIT_ACCESS_TOKEN
# ENV GIT_ACCESS_TOKEN=${GIT_ACCESS_TOKEN}
# RUN git config --global url."https://${GIT_ACCESS_TOKEN}@github.com".insteadOf "ssh://git@github.com"
# ENV NODE_ENV=development
# COPY package.json .
# COPY . .
# RUN chmod +x ./startup.sh
# RUN npm install
# RUN npm i -g sequelize-cli
# RUN npm i -g typescript
# ENTRYPOINT ["sh", "./startup.sh" ]
