provider "aws" {
  region = var.aws_region
  access_key="AKIATPVI55FD5ZW6F4DP"
  secret_key="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"
}

resource "aws_s3_bucket" "my-s3-bucket" {
  bucket_prefix = var.bucket_prefix
  acl = var.acl
  
   versioning {
    enabled = var.versioning
  }
  
  tags = var.tags
}
