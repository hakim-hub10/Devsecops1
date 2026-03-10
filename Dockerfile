# ----------------------------------------
    # NexaPointIT - Nginx Docker Image
    # ----------------------------------------
    
    ARG NGINX_VERSION=alpine
    FROM nginx:${NGINX_VERSION}
    
    # Update packages to patch vulnerabilities
    RUN apk update && apk upgrade
    
    # Remove default nginx static files
    RUN rm -rf /usr/share/nginx/html/*
    
    # Copy app files
    COPY . /usr/share/nginx/html
    
    EXPOSE 80