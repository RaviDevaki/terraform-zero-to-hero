terraform {
  backend "s3" {
    bucket = "raviawsterraformstatefile"
    key    = "state"
    region = "us-east-1"
  }
}