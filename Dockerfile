# ----------------------------------------
# MyApp - Nginx Docker Image
# ----------------------------------------
FROM nginx:alpine

# Remove default nginx static files
RUN rm -rf /usr/share/nginx/html/*

# Copy ALL app files (HTML, images, CSS, etc.)
COPY . /usr/share/nginx/html

# Expose port 80 (documentation purpose)
EXPOSE 80
