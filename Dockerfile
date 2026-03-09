FROM node:18-alpine
COPY ./contact_ui_ng_app_testing /app
WORKDIR /app
RUN npm install
ENTRYPOINT ["npm","start"]
