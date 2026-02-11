![CI Status](https://github.com/hakim-hub10/Devsecops1/actions/workflows/ci.yml/badge.svg?branch=main)
![Docker Status](https://github.com/hakim-hub10/Devsecops1/actions/workflows/docker.yml/badge.svg?branch=main)

# MyApp - DevSecOps Demo

This project demonstrates a simple static web application running in Docker with nginx.

## Features
- Dockerized nginx (alpine)
- Custom HTML & CSS
- Security headers
- Image vulnerability scanning with Trivy

## Build image
```bash
docker build -t mydevsecops .
 
