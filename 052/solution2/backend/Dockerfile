FROM node:20
EXPOSE 8080
ENV DB_HOST=mysql

RUN useradd expense
RUN mkdir /opt/server && chown expense:expense -R /opt/server

WORKDIR /opt/server
# USER expense

COPY package.json .
COPY *.js .

RUN npm install
CMD ["node", "index.js"]