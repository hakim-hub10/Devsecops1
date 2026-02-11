![CI Status](https://github.com/hakim-hub10/mydevsecops/actions/workflows/ci.yml/badge.svg)
![Docker Status](https://github.com/hakim-hub10/mydevsecops/actions/workflows/docker.yml/badge.svg)

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
 
