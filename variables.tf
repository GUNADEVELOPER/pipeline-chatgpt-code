variable "region" {
  description = "The AWS region to create resources in"
  default     = "ap-south-1"
}

variable "ami" {
  description = "The AMI ID for the EC2 instance"
  default     = "ami-0d1e92463a5acf79d"
}

variable "instance_type" {
  description = "The instance type for the EC2 instance"
  default     = "t2.micro"
}

variable "bucket_name" {
  description = "The name of the S3 bucket"
  default     = "example-bucket-123456"
}
