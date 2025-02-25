# Use the official Nginx image as the base
FROM nginx:latest

# Copy custom website files to the Nginx web root
COPY ./template /usr/share/nginx/html

# Expose port 80 to allow external access
EXPOSE 89

# Start Nginx when the container runs
CMD ["nginx", "-g", "daemon off;"]
