
FROM node:20-slim

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

# Create uploads directory
RUN mkdir -p public/uploads/parks

# Set proper permissions
RUN chmod -R 777 public/uploads

EXPOSE 3000

CMD [ "npm", "start" ]