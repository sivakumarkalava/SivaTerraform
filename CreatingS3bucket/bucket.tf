resource "aws_s3_bucket" "mybucket" {
  bucket = "s3bucket4statefile09" 
} ##Created bucket

resource "aws_s3_bucket_versioning" "version" {
  bucket = aws_s3_bucket.mybucket.id

  versioning_configuration {
    status = "Enabled" ##added versioning and status set to enable
  }
}
