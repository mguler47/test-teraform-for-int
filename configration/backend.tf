terraform {
  backend "s3" {
    bucket = "backed-state-mehmet"
    key    = "infrastructure"
    region = "us-east-1"
  }
}