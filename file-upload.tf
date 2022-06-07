# upload a single file
resource "aws_s3_object" "object1" {
  bucket = aws_s3_bucket.create-s3-bucket.bucket
  key = "example.txt"
  source = "example.txt"
}

resource "aws_s3_object" "object2" {
  bucket = aws_s3_bucket.create-s3-bucket.bucket
  key = "example.txt"
  source = "example.txt"
}

# #upload a multiple file
# # resource "aws_s3_object" "multiobject" {
# #   bucket = aws_s3_bucket.example.bucket
# #   for_each = fileset("C:\\Users\\santhosh Josephraj\\OneDrive - Codin City\\Desktop\\Pictory\\topics\\S3\\versioning and life cycle policy\\files", "*")
# #   key = each.value
# #   source = "C:\\Users\\santhosh Josephraj\\OneDrive - Codin City\\Desktop\\Pictory\\topics\\S3\\versioning and life cycle policy\\files\\${each.value}"
# # }