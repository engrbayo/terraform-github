terraform {
  backend "s3" {
    bucket = "demobucket-s3-test"
    key    = "path/s3-bucket"
    region = "us-east-1"
    dynamodb_table = "Git-Table"
  }
}
