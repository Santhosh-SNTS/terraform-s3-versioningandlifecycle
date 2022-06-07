#--------------------
variable "bucket-name" {
    default = "codincity-backup-demo-123"
  
}
#--------------------

resource "aws_s3_bucket" "create-s3-bucket" {
    bucket = "${var.bucket-name}"
    acl = "private"
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
    versioning {
      enabled = true
    }
    tags = {Environment:"testing"}
}