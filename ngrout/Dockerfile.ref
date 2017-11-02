FROM node:boron

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package.json .
# For npm@5 or later, copy package-lock.json as well
COPY package.json package-lock.json ./

RUN npm install --production

# Bundle app source
RUN mkdir www
COPY ./www ./www
COPY ./serv.sh ./

EXPOSE 8080
CMD [ "bash", "serv.sh" ]
