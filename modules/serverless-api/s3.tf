resource "aws_s3_bucket" "bucket" {
  bucket = "serverless-api-bucket-${var.env}-${var.region}"
  acl    = "private"

  versioning {
    enabled = true
  }
  
  tags = {
    Name        = "Serverless API Bucket"
    Environment = var.env
    Region      = var.region
  }
}