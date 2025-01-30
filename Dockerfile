# Use the official Nginx image from Docker Hub
FROM nginx:mainline-alpine

# Set the maintainer label (optional)
LABEL maintainer="your-email@example.com"

# Copy custom Nginx configuration file (if you have one)
# COPY nginx.conf /etc/nginx/nginx.conf
############
# Copy your static website content (optional)
# COPY ./html /usr/share/nginx/html

# Expose port 80 to access the web server
EXPOSE 80

# The default command to run Nginx
CMD ["nginx", "-g", "daemon off;"]
