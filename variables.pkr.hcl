variable "aws_region" {
  type    = string
  default = "us-east-1"
}

variable "source_ami" {
  type        = string
  default     = "ami-05969be345d4c5c67"
  description = "Base RHEL AMI ID from AWS Marketplace"

}

variable "ami_name" {
  type    = string
  default = "custom-rhel-ami-{{timestamp}}"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}
