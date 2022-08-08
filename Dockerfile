LABEL ME
FROM node:17

RUN mkdir -p /home/app

# set default dir so that next commands executes in /home/app dir
WORKDIR /home/app

COPY package*.json ./ 
COPY index.js ./
# will execute npm install in /home/app because of WORKDIR
RUN npm install

EXPOSE 3000
# no need for /home/app/server.js because of WORKDIR
CMD ["node", "index.js"]
