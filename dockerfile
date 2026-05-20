FROM node:18-alpine
WORKDIR /amazon
COPY . .
RUN npm install
CMD ["npm","start"]

