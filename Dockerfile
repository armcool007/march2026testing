FROM node:18-alpine 
COPY . /hotstar
WORKDIR /hotstar
RUN npm install
CMD ["npm","start"]
EXPOSE 3000
