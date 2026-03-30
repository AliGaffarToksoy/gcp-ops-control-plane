# 🚀 GCP-Ops Control Plane (Local Cloud-Native Simulation)

A fully production-style **DevOps & Cloud-Native platform**, implemented entirely on **local infrastructure** using Kubernetes, Terraform (mocked), Kafka, OpenSearch, and modern observability tooling.  

This project simulates a complete Google Cloud architecture **without requiring any cloud account**, making it ideal for learning, portfolio demonstration, and enterprise-grade DevOps practice.

---

## 📘 Overview

This repository provides a complete, modular, and cloud-native control plane architecture designed for:

- Event-driven microservices  
- Kubernetes-based orchestration  
- Infrastructure-as-Code workflows  
- Local-first development with cloud-like behavior  
- Enterprise DevOps patterns (CI/CD, logging, monitoring, service isolation)

All components run locally but follow **real GCP production architecture patterns**, enabling a realistic hands-on experience without cloud costs.

---

## 🏗️ Architecture

The system is composed of:

- **kind (Kubernetes in Docker)** → GKE simulation  
- **Local Docker Registry** → Artifact Registry simulation  
- **Kafka + Zookeeper** → Event streaming backbone  
- **OpenSearch + Dashboards** → Centralized logging & analytics  
- **Prometheus + Grafana** → Metrics & observability  
- **API + Worker microservices** → Event-driven pipeline  
- **Terraform modules (mocked)** → GCP infrastructure representation  

All services run inside a dedicated Kubernetes namespace and communicate internally using ClusterIP networking.

---

## 🧰 Technology Stack

| Layer | Technology | Purpose |
|------|------------|---------|
| Container Orchestration | Kubernetes (kind) | GKE simulation |
| Messaging | Apache Kafka | Event streaming backbone |
| Coordination | Zookeeper | Kafka cluster coordination |
| Logging | OpenSearch | Log indexing & storage |
| Visualization | OpenSearch Dashboards | Log exploration UI |
| Metrics | Prometheus | Metrics scraping |
| Dashboards | Grafana | Observability UI |
| IaC | Terraform (mocked) | GCP architecture representation |
| Runtime | Docker | Local container runtime |
| CI/CD | GitHub Actions (mock) | Pipeline simulation |

---

## 📁 Project Structure

```
gcp-ops-control-plane/
├── infra/
│   ├── terraform/
│   │   ├── modules/
│   │   │   ├── vpc/
│   │   │   ├── gke/
│   │   │   ├── cloud-run/
│   │   │   ├── artifact-registry/
│   │   │   └── iam/
│   │   ├── envs/
│   │   │   ├── dev/
│   │   │   └── prod/
│   │   ├── provider.tf
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   └── local/
│       ├── kind-cluster.yaml
│       ├── local-registry.yaml
│       └── docker-compose.yaml
│
├── k8s/
│   ├── namespace.yaml
│   ├── zookeeper.yaml
│   ├── kafka.yaml
│   ├── opensearch.yaml
│   ├── opensearch-dashboards.yaml
│   ├── api.yaml
│   └── worker.yaml
│
├── monitoring/
│   ├── prometheus/
│   └── grafana/
│
├── apps/
│   ├── api/
│   └── worker/
│
└── README.md
```

---

## ✨ Key Features

- Cloud-native architecture fully simulated locally  
- Event-driven pipeline using Kafka  
- Centralized logging with OpenSearch  
- Production-style observability with Prometheus & Grafana  
- Namespace isolation for clean multi-service environments  
- Terraform modules mirroring real GCP infrastructure  
- Zero cloud cost while maintaining enterprise realism  
- Portfolio-ready, recruiter-friendly project  

---

## ⚙️ Setup & Installation

### 1️⃣ Install Dependencies

- Docker  
- kubectl  
- kind  
- docker-compose  

---

### 2️⃣ Start Local Docker Registry

```
docker compose -f infra/local/docker-compose.yaml up -d
```

---

### 3️⃣ Create Kubernetes Cluster (GKE Simulation)

```
kind create cluster --config infra/local/kind-cluster.yaml
```

---

### 4️⃣ Connect kind to Local Registry

```
kubectl apply -f infra/local/local-registry.yaml
```

---

## ☸️ Kubernetes Deployment (Cloud-Native Phase)

The project runs as a fully orchestrated **cloud-native system** inside Kubernetes.

---

### 🧱 1. Create Namespace

```
kubectl apply -f k8s/namespace.yaml
```

---

### 📡 2. Deploy Core Infrastructure

```
kubectl apply -f k8s/zookeeper.yaml
kubectl apply -f k8s/kafka.yaml
kubectl apply -f k8s/opensearch.yaml
kubectl apply -f k8s/opensearch-dashboards.yaml
```

---

### 🔍 3. Verify Cluster

```
kubectl get pods -n gcp-ops
```

Ensure all services are running successfully.

---

### ⚙️ 4. Deploy Microservices

```
kubectl apply -f k8s/api.yaml
kubectl apply -f k8s/worker.yaml
```

---

### 🌐 5. Access Dashboards

```
kubectl port-forward svc/opensearch-dashboards 5601:5601 -n gcp-ops
```

Open:

```
http://localhost:5601
```

---

## 📸 Screenshots

> Replace these placeholders with actual project screenshots

- Dashboard View  
- Kubernetes Pods  
- Kafka Topics  
- Grafana Metrics  

---

## 👨‍💻 Developer

**Ali Toksoy**  
Cloud & DevOps Engineer  

Passionate about:
- Cloud-native architectures  
- Automation  
- Scalable distributed systems  

---

## ⭐ Final Notes

This project is designed to **simulate a real enterprise cloud platform** while running entirely on local infrastructure.

Perfect for:

- DevOps portfolio  
- Technical interviews  
- Hands-on cloud-native learning  
- Practicing Kubernetes, Kafka, IaC, and observability  

If you found this project useful, consider giving it a ⭐

---