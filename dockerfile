# Use the official Node.js image as the base image
FROM node:18-alpine

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json (if available)
COPY package*.json ./

# Install app dependencies
RUN npm install --production

# Copy the application files
COPY . .

# Expose the port the app runs on
EXPOSE 3000

# Set the command to run the app
CMD ["node", "./bin/www"]
