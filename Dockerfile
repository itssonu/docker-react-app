FROM node:16.13.2-alpine3.15
RUN  addgroup app && adduser -SG app app 
USER app
WORKDIR /app
COPY package*.json .
RUN npm install
COPY . . 
ENV API_URL=http://domain.com/api
EXPOSE 3000
CMD ["npm","start"]