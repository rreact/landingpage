# Use a lightweight web server image as the base image
FROM nginx:alpine

# Copy your static HTML files to the default Nginx web root directory
COPY ./ /usr/share/nginx/html/

# Expose the port that Nginx will listen on (optional but can be helpful for port mapping)
EXPOSE 80

# Start Nginx server in the foreground (non-daemon mode) when the container starts
CMD ["nginx", "-g", "daemon off;"]
