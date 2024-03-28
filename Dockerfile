FROM node:17
WORKDIR /app
COPY package.json /app
RUN npm  install
RUN npm update
# RUN npm audit fix 
COPY . /app
EXPOSE 3000
CMD [ "npm", "start" ]