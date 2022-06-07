# resource "aws_s3control_bucket_lifecycle_configuration" z"lifecycle" {
#       bucket = aws_s3_bucket.lifecycle.bucket
#       id = "archive"
#       status = "Enabled"
#       transition {
#         days = 30
#         storage_class = "STANDARD_IA"
#         }
#       transition {
#           days = 60
#           storage_class = "GLACIER"
        
#       }  
#     }