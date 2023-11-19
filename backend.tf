terraform {
  backend "s3" {
    bucket = "second-sentrick"
    key    = "path/s3-bucket"
    region = "us-east-2"
    dynamodb_table = "test_table_db"
    #lock = "false"
  }
}
