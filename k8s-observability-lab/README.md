# ☸️ Kubernetes Infrastructure & Observability Lab

### Project Overview
This laboratory demonstrates the implementation of a local **Kubernetes (K8s)** cluster with a full observability stack. The project covers the end-to-end process from environment setup and cluster orchestration to real-time monitoring and resource stress testing.

---

### 🚀 Technical Milestones

#### 1. Environment Provisioning
* **Package Management:** Used **Chocolatey** for automated installation of DevOps tools (kubectl, kind, helm).
* **Cluster Orchestration:** Deployed a local cluster using **Kind (Kubernetes in Docker)**.
* **Automation:** Managed deployments through **Helm Charts** for standardized application lifecycle.

#### 2. Observability Stack (Monitoring)
* **Metrics Collection:** Implemented **Prometheus** to scrape system and pod-level metrics.
* **Visualization:** Configured **Grafana** dashboards to visualize cluster health, CPU usage, and memory consumption.
* **Configuration:** Custom `config.yaml` for tailored cluster behavior and networking.

#### 3. Stress Testing & Validation
* **Performance Analysis:** Executed `stress-test.yaml` to simulate high-load scenarios.
* **Incident Observation:** Monitored pod scaling and resource limits under pressure to validate cluster stability.

---

### 🛠️ Tech Stack
* **Orchestration:** Kubernetes, Kind.
* **Package Managers:** Helm, Chocolatey.
* **Monitoring:** Prometheus, Grafana.
* **Infrastructure:** Docker, YAML.

---

### 📂 Lab Evolution (Screenshots)
The `/screenshots` folder documents the step-by-step progress:
1. **Setup:** Installation of prerequisites via Chocolatey.
2. **Cluster Creation:** Initializing the Kind environment.
3. **Deployment:** Installing the Prometheus-Grafana stack via Helm.
4. **Analysis:** Custom Grafana dashboards displaying live metrics.

---

### 📜 How to use
You can find the exact commands used during this lab in `commands-used.txt`. These files are intended for documentation and educational purposes.

---

### 📧 Connectivity
Let's connect on [LinkedIn](https://www.linkedin.com/in/lucas-gaston-martinez/).
