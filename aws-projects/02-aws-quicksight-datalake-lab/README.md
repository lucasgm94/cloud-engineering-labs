# Lab 02: AWS Serverless Data Lake & Analytics Pipeline (S3 + Glue)

## 🎯 Objective
Build a foundational serverless data lake architecture on AWS. This lab covers the ingestion of raw analytical datasets into Amazon S3, structuring storage zones (`raw` vs `transformed`), and configuring AWS Glue Crawlers to automatically discover schemas and populate the AWS Glue Data Catalog.

## 🛠️ Services Used
* **Amazon S3:** Scalable object storage acting as the central Data Lake repository.
* **AWS Glue (Data Catalog & Crawlers):** Serverless metadata cataloging and schema discovery.

## 🚀 Step-by-Step Execution

### Phase 1: Data Lake Storage Provisioning (Amazon S3)
1. Created an S3 bucket (`aws-quicksight-datalake-lab-lucas-martinez`) dedicated to the analytics pipeline.[cite: 5]
2. Structured the lake into distinct landing zones:
   * `raw-data/`: Stores raw ingested datasets (e.g., CSV extracts).[cite: 6, 7]
   * `transformed-data/`: Reserved for processed/curated data.[cite: 6]
   * `athena-query-results/`: Stores query execution outputs.[cite: 6]

### Phase 2: Data Ingestion
1. Uploaded a sample dataset (`crunchyroll_titles.csv`) directly into the `raw-data/` prefix of the S3 bucket.[cite: 8, 9]

### Phase 3: Automated Schema Discovery (AWS Glue Crawler)
1. Navigated to AWS Glue and initialized a new Crawler named `crawler-s3-raw-ingestion`.[cite: 11, 12]
2. Configured the S3 data source pointing directly to the raw ingestion path to inspect and catalog incoming data structures automatically.

## 💡 Key Takeaways
Implementing a structured multi-tier S3 layout paired with AWS Glue Crawlers enables automated schema evolution, laying down the groundwork for serverless SQL querying via Amazon Athena and business intelligence reporting with Amazon QuickSight.