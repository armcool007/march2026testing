FROM node:18-alpine
COPY . /bingo
WORKDIR /bingo
RUN npm install
RUN npm run build
ENV PORT=3000
CMD ["npm","start"]
EXPOSE 3000
