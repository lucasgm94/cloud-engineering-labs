provider "aws" {
  region = "us-east-1"
}

# Ejemplo de un recurso mal configurado (Inseguro)
resource "aws_s3_bucket" "bucket_inseguro" {
  bucket = "mi-bucket-de-pruebas-inseguro"
  acl    = "public-read" # ¡Riesgo de seguridad! Esto hace que el bucket sea público
}