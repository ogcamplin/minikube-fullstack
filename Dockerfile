FROM node:16

WORKDIR /usr/src/todo_app
COPY package*.json ./

RUN npm install

COPY dist ./dist/
COPY src/server ./src/server/
COPY index.html ./
COPY .babelrc ./

ENV PORT=8080

EXPOSE 8080

CMD [ "npm", "run", "server" ]