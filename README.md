# DevSecOps Kubernetes Platform – Hetzner

![CI Status](https://github.com/hakim-hub10/Devsecops1/actions/workflows/ci.yml/badge.svg?branch=main)
![Docker Build](https://github.com/hakim-hub10/Devsecops1/actions/workflows/docker-build.yml/badge.svg?branch=main)

## Overview
This project demonstrates a complete DevSecOps workflow from development to deployment in a Kubernetes cluster running on Hetzner.

It follows DevSecOps best practices including security, automation, and observability.
It includes:

* CI/CD pipeline (GitHub Actions)
* Docker containerization (NGINX)
* GitOps deployment (ArgoCD)
* Security scanning (Trivy)
* Monitoring (Prometheus & Grafana)
* Kubernetes (k3s on Hetzner)

---

## Architecture

```
GitHub → CI/CD → Docker (GHCR) → ArgoCD → Kubernetes → NGINX Ingress → App
                                      ↓
                              Prometheus + Grafana
                                      ↓
                                   Trivy
```

---

## Live Application

Application is exposed via Kubernetes Ingress:

```
http://46.62.195.255:32399
```

---

## Tech Stack

* **CI/CD:** GitHub Actions
* **Container:** Docker (nginx:alpine)
* **Registry:** GitHub Container Registry (GHCR)
* **Orchestration:** Kubernetes (k3s, Hetzner)
* **GitOps:** ArgoCD
* **Security:** Trivy
* **Monitoring:** Prometheus + Grafana
* **Ingress:** NGINX

---

## CI/CD Pipeline

### 1. CI (ci.yml)

* Code validation
* Structure checks

### 2. Docker Build (docker-build.yml)

* Builds Docker image
* Pushes to GHCR

### 3. Security

* Trivy scans container & configs
* Blocks critical vulnerabilities

---

## Kubernetes Deployment

Deployed using GitOps via ArgoCD.

Resources:

* Deployment (replicas)
* Service (ClusterIP)
* Ingress (external access)

---

## Security

* Hardened NGINX config (security headers)
* Regular base image updates
* Trivy vulnerability scanning

---

## Monitoring

* Prometheus collects metrics
* Grafana dashboards for observability

---

## Run Locally

```bash
docker build -t devsecops1-local .
docker run -d -p 8080:80 devsecops1-local
```

Open:

```
http://localhost:8080
```

---

## Future Improvements

* Use image tags (commit SHA instead of latest)
* Add SAST scanning
* Terraform for infrastructure
* HTTPS with cert-manager

---

## Future Improvements & Roadmap

The following improvements are planned to further enhance the platform:

### 1. Domain & HTTPS

* Configure a custom domain
* Enable HTTPS using cert-manager and Let's Encrypt
* Secure external traffic with TLS encryption

### 2. Ingress & Traffic Management

* Improve NGINX Ingress configuration
* Remove NodePort usage and expose application via LoadBalancer
* Optimize routing and scalability

### 3. Centralized Logging

* Implement centralized logging (e.g., Loki or ELK stack)
* Collect logs from Kubernetes workloads
* Enable better debugging and observability

### 4. Security Enhancements

* Improve access control and network policies
* Add more security scanning in CI/CD
* Avoid storing sensitive data in repositories (tokens, secrets, credentials)

---

## Security Note

* No sensitive credentials are stored in this repository
* Secrets and tokens are handled securely via environment variables and Kubernetes secrets
* Public IP is used only for access and does not expose internal infrastructure


## Author

Abdihakim – DevSecOps Student
