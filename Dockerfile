# Use an official nginx runtime as the base image
FROM nginx:alpine

# Copy your HTML and CSS files to the web root directory
COPY index.html /usr/share/nginx/html
COPY styles.css /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start the nginx web server
CMD ["nginx", "-g", "daemon off;"]
