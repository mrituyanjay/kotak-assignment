resource "aws_s3_bucket" "infra-bucket" {
  bucket = var.bucket
}

resource "aws_s3_bucket_versioning" "versioning_example" {
  bucket = aws_s3_bucket.infra-bucket.id
  versioning_configuration {
    status = "Disabled"
  }
}


resource "aws_dynamodb_table" "terraform-state-lock-infra" {
  name           = "terraform-state-lock-infra"
  hash_key       = "LockID"
  read_capacity  = 20
  write_capacity = 20

  attribute {
    name = "LockID"
    type = "S"
  }
}