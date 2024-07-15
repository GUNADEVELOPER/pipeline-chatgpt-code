terraform {
  backend "s3" {
    region = "ap-south-1"
    bucket = "jenkin9789"
    key    = "terraform.tfstate"
    }
}
