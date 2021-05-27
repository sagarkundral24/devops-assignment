FROM node:12.13.1-alpine

WORKDIR /usr/src/app 

COPY requirements.txt requirements.txt

RUN apk add python3-dev

RUN apk add build-base

RUN apk add py3-pip

RUN pip3 install -r requirements.txt

COPY package.json ./

RUN npm install 

COPY . .

EXPOSE 8080

CMD [ "node", "./bin/www" ]

