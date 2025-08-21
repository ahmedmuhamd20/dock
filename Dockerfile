# Use official Node.js runtime as base image
FROM node:22

# Set the working directory inside the container
WORKDIR /app

# Copy the package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy the application code into the container
COPY . .

# Expose the port that the app will run on
EXPOSE 3000

# Run the app
CMD ["npm", "start"]
