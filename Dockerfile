FROM node:20-alpine as builder

COPY package.json package-lock.json /
RUN npm install

COPY index.js /

CMD [ "node", "/index.js" ]
