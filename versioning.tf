variable "version-status" {
    type = map(string)
    default = {
        1 = "Enabled"
        2 = "Suspended"
    }  
}

resource "aws_s3_bucket_versioning" "versioning_example" {
  bucket = aws_s3_bucket.create-s3-bucket.id
  versioning_configuration {
    status = var.version-status.1
  }
}