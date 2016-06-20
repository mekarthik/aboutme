FROM node:argon

# Create app directory
RUN mkdir -p /usr/src/aboutme
WORKDIR /usr/src/aboutme

# Install app dependencies
COPY package.json /usr/src/aboutme/
RUN npm install

# Bundle app source
COPY . /usr/src/aboutme

EXPOSE 3000
CMD [ "node", "app.js" ]
