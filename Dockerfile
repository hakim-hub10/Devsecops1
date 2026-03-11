# ----------------------------------------
    # NexaPointIT - Nginx Docker Image
    # ----------------------------------------
    
    ARG NGINX_VERSION=alpine
    FROM nginx:${NGINX_VERSION}
    
    # Update packages to patch vulnerabilities
    RUN apk update && apk upgrade --no-cache
    
    # Remove default nginx static files
    RUN rm -rf /usr/share/nginx/html/*
    
    # Copy application files
    COPY . /usr/share/nginx/html
    
    # Set proper permissions
    RUN chmod -R 755 /usr/share/nginx/html
    
    # Expose web port
    EXPOSE 80
    
    # Start nginx
    CMD ["nginx", "-g", "daemon off;"]