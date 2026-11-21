provider "aws" {
  region = "us-east-1"
}

# 1. Bucket S3 principal seguro
resource "aws_s3_bucket" "bucket_seguro" {
  bucket = "mi-bucket-de-pruebas-seguro-2026"

  tags = {
    Environment = "Production"
    Security     = "Hardened"
  }
}

resource "aws_s3_bucket_public_access_block" "bloqueo_publico" {
  bucket = aws_s3_bucket.bucket_seguro.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

resource "aws_kms_key" "clave_s3" {
  description             = "KMS key for S3 bucket encryption"
  deletion_window_in_days = 10
  enable_key_rotation     = true
}

resource "aws_s3_bucket_server_side_encryption_configuration" "cifrado" {
  bucket = aws_s3_bucket.bucket_seguro.id

  rule {
    apply_server_side_encryption_by_default {
      kms_master_key_id = aws_kms_key.clave_s3.arn
      sse_algorithm     = "aws:kms"
    }
  }
}

resource "aws_s3_bucket_versioning" "versionado" {
  bucket = aws_s3_bucket.bucket_seguro.id

  versioning_configuration {
    status = "Enabled"
  }
}

# 2. Bucket de logs seguro
resource "aws_s3_bucket" "log_bucket" {
  bucket = "mi-bucket-de-logs-seguro-2026"

  tags = {
    Environment = "Production"
    Security     = "Logging"
  }
}

resource "aws_s3_bucket_public_access_block" "bloqueo_logs" {
  bucket = aws_s3_bucket.log_bucket.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_server_side_encryption_configuration" "cifrado_logs" {
  bucket = aws_s3_bucket.log_bucket.id

  rule {
    apply_server_side_encryption_by_default {
      kms_master_key_id = aws_kms_key.clave_s3.arn
      sse_algorithm     = "aws:kms"
    }
  }
}

resource "aws_s3_bucket_versioning" "versionado_logs" {
  bucket = aws_s3_bucket.log_bucket.id

  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_ownership_controls" "ownership_logs" {
  bucket = aws_s3_bucket.log_bucket.id
  rule {
    object_ownership = "BucketOwnerEnforced"
  }
}

resource "aws_s3_bucket_logging" "logging" {
  bucket        = aws_s3_bucket.bucket_seguro.id
  target_bucket = aws_s3_bucket.log_bucket.id
  target_prefix = "log/"
}