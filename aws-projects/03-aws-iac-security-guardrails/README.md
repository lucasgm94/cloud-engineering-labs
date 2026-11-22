# Lab 03: AWS Infrastructure as Code (IaC) Security & Guardrails

## 🎯 Objective
Simulate a full DevSecOps **Shift Left** security lifecycle by performing static code analysis (Security as Code) on Terraform configurations. This lab demonstrates how automated guardrails detect cloud misconfigurations *before* deployment, followed by infrastructure hardening and verification.

## 🛠️ Tools Used
* **Aqua Security Trivy:** Open-source vulnerability and IaC misconfiguration scanner.
* **Terraform (HCL):** Infrastructure as Code definition.

## 📂 Lab Structure
* `01-vulnerable/`: Contains the initial insecure Terraform configuration (`main.tf`) with an exposed S3 bucket and the full Trivy audit log (`trivy-report.txt`).
* `02-remediated/`: Contains the hardened Terraform configuration (`main.tf`) enforcing AWS security best practices (public access block, KMS encryption, versioning) and the verification report.
* `screenshots/`: Visual evidence of both the initial detection phase and the post-remediation verification.

## 🚀 Step-by-Step Execution

### Phase 1: Misconfiguration Detection
1. Defined an AWS S3 bucket with a `public-read` ACL and unencrypted storage in `01-vulnerable/main.tf`.
2. Executed Trivy static analysis:
   ```bash
   trivy config ./01-vulnerable
   ```
3. Findings: Trivy intercepted multiple misconfigurations (including `HIGH` severity alerts such as `AWS-0086` for missing public access blocks).

### Phase 2: Remediation & Verification
1. Hardened the infrastructure in `02-remediated/main.tf` by implementing:
   * Strict S3 Public Access Blocks (`aws_s3_bucket_public_access_block`).
   * Server-Side Encryption using an AWS KMS customer-managed key with key rotation enabled.
   * Object versioning and server access logging.
2. Re-ran Trivy to validate compliance:
   ```bash
   trivy config ./02-remediated
   ```

## 💡 Key Takeaways
Embedding automated security guardrails early into the IaC workflow prevents human error and insecure defaults from ever reaching cloud production environments, ensuring continuous alignment with CIS Benchmarks and AWS security standards.