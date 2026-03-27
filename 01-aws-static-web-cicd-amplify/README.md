# 🚀 Lab 01: Secure Static Web Hosting & CI/CD Pipeline

This laboratory demonstrates the deployment of a secure, automated static website using **Amazon Web Services (AWS)**. The project transitions from a manual S3 storage setup to a fully automated **CI/CD pipeline** with **AWS Amplify**, prioritizing encryption and resource lifecycle management.

---

## 🛠️ Tech Stack & Services
* **Storage:** Amazon S3 (Simple Storage Service)
* **Automation:** AWS Amplify (Continuous Deployment)
* **Security:** IAM Policies, SSL/TLS (HTTPS)
* **Version Control:** GitHub

---

## 📂 Laboratory Roadmap

### Phase 1: Infrastructure Setup (S3)
Initial hosting configuration by creating an **S3 Bucket** and enabling **Static Website Hosting**.
* *Key Action:* Uploading core files (`index.html`, CSS, assets) and defining the index document.
* **Evidence:** `(./screenshots/01-s3-bucket-configuration (11).png/)`

### Phase 2: Identity & Access Management (IAM)
Implementing security layers through **Bucket Policies** to control public access.
* *Key Action:* Applying a JSON policy for `s3:GetObject` permissions, following the principle of least privilege.
* **Evidence:** `02-iam-bucket-policy-json.png`

### Phase 3: CI/CD Pipeline Integration
Connecting the **GitHub** repository to **AWS Amplify** to automate the deployment workflow.
* *Key Action:* Configuring build settings so every `git push` triggers an automatic update.
* **Evidence:** `03-amplify-github-connection.png`

### Phase 4: Automated Deployment & Deployment Checks
Executing the build process where AWS Amplify provisions, builds, and deploys the application.
* *Key Action:* Monitoring the deployment status until the "Rocket" 🚀 icon confirms success.
* **Evidence:** `04-amplify-deployment-rocket.png`

### Phase 5: Security Verification (SSL/TLS)
Validating that the website is served over a secure connection.
* *Key Action:* Verifying the **HTTPS** certificate and ensuring data encryption in transit.
* **Evidence:** `05-https-ssl-verification.png`

### Phase 6: Resource Lifecycle & Cleanup (FinOps)
Properly decommissioning resources to prevent unnecessary costs and maintain environment hygiene.
* *Key Action:* Emptying the S3 Bucket and deleting the Amplify App after successful testing.
* **Evidence:** `06-s3-empty-bucket-action.png` & `07-s3-bucket-deletion-confirm.png`

---

## 🛡️ Cybersecurity & Cloud Insights
1.  **Automation over Manual Tasks:** Moving from S3 to Amplify reduces human error in deployments.
2.  **Encryption by Default:** The shift to HTTPS ensures that user traffic is protected against interception.
3.  **Cost Awareness:** Documenting the deletion phase demonstrates a professional approach to **Cloud Economics (FinOps)**.

---
*Developed & Documented by [Lucas Martinez](https://github.com/lucasgm94)*
