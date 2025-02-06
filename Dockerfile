# Step 1: Use a base image that includes Node.js
FROM node:16 as build

# Set working directory in the container
WORKDIR /app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the app's code
COPY . .

# Step 2: Build the app (if applicable)
RUN npm run build

# Step 3: Use a new image with Nginx
FROM nginx:alpine

# Copy Nginx configuration file
COPY nginx.conf /etc/nginx/nginx.conf

# Copy the Node.js app (built) into the Nginx folder
COPY --from=build /app /usr/share/nginx/html

# Expose port for the app
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]
