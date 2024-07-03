FROM node:20.15.0-alpine3.20
LABEL Authour="gopi"
LABEL Project="strapi"
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 1337
CMD [ "npm", "start" ]
