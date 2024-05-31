# Use the official Node.js 22 image as the base image
FROM node:22.2

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install project dependencies
RUN npm install

# Copy the rest of the application source code to the container
COPY . .

# Creates a "dist" folder with the production build
RUN npm run build

# Expose the port your Nest.js application is listening on
EXPOSE 3333

# Command to start your Nest.js application
CMD [ "npm", "run", "start:prod" ]
