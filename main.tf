provider "aws" {
    region = "us-east-1"
    access_key = "AKIAQ5ECK6UC6GFKR6ZN"
    secret_key = "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"
  
}
#--------------------
variable "bucket-name" {
    default = "codincity-backup-demo1-123"
  
}
#--------------------

resource "aws_s3_bucket" "create-s3-bucket" {
    bucket = "${var.bucket-name}"
    acl = "public-read"
    policy = file("s3bucketpolicy.json")
    lifecycle_rule {
      id = "archive"
      enabled = true
      transition {
        days = 30
        storage_class = "STANDARD_IA"
        }
      transition {
          days = 60
          storage_class = "GLACIER"
        
      }  
    }
    # versioning {
    #   enabled = true
    # }
    tags = {Environment:"testing"}
}