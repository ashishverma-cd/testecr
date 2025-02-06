# Use Node.js base image for building and serving the app
FROM node:16 

# Set working directory
WORKDIR /usr/src/app

# Copy package.json and install dependencies
COPY package.json package-lock.json ./
RUN npm install

# Copy the application files
COPY . .

# Build the application
RUN npm run build

# Expose application port
EXPOSE 3000

# Run the application
CMD ["node", "app.js"]