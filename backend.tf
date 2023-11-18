terraform {
  backend "s3" {
    bucket = "second-sentrick"
    key    = "path/s3-bucket"
    region = "us-east-1"
    dynamodb_table = "my-lock-table"
  }
}
