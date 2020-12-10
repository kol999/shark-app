FROM node:10

RUN mkdir -p /home/node/app/node_modules && chown -R node:node /home/node/app

WORKDIR /usr/src/app  

COPY package*.json ./

# USER node

RUN npm install

COPY . . 

EXPOSE 3000 

CMD [ "node", "app.js" ]


