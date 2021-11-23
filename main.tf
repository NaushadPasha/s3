provider "aws" {
  region = var.aws_region
}

resource "aws_s3_bucket" "my-s3-bucket[count.index]" {
  bucket_prefix = var.bucket_prefix
  acl = var.acl
  count = 3
  
   versioning {
    enabled = var.versioning
  }
  
  tags = var.tags
}
