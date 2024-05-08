
FROM node:alpine


WORKDIR /usr/app
EXPOSE 5000


COPY ./ ./

RUN npm install

CMD ["sh", "-c", "mongod --bind_ip_all & npm start"]