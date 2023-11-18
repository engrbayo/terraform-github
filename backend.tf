terraform {
  backend "s3" {
    bucket = "pull-request-action-bucket"
    key    = "path/s3-bucket"
    region = "us-east-1"
    dynamodb_table = "terraform-table"
  }
}
