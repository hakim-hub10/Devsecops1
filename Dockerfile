# ----------------------------------------
# MyApp - Nginx Docker Image
# ----------------------------------------
# Base image: lightweight & secure
FROM nginx:alpine

# Remove default nginx static files
RUN rm -rf /usr/share/nginx/html/*

# Copy our custom HTML page
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80 (documentation purpose)
EXPOSE 80

# Nginx runs in foreground by default

