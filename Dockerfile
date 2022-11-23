FROM node:16

WORKDIR /usr/src/app

COPY ["package.json","yarn.lock", "bin", ".env", "tsconfig.json", "./","migrations"]

COPY . .

RUN yarn 

RUN yarn build

CMD ["yarn", "start"]
