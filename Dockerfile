FROM node:17-alpine
WORKDIR /starbuks
COPY . /starbuks
RUN npm install
CMD ["npm","start"]
EXPOSE 3000

