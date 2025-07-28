packer {
  required_plugins {
    amazon = {
      source  = "github.com/hashicorp/amazon"
      version = ">= 1.0.0"
    }
  }
}

source "amazon-ebs" "rhel" {
  region                      = var.aws_region
  source_ami                  = var.source_ami
  instance_type               = var.instance_type
  ami_name                    = var.ami_name
  ssh_username                = "ec2-user"
  associate_public_ip_address = true
}

build {
  sources = ["source.amazon-ebs.rhel"]

  provisioner "shell" {
    script = "scripts/setup.sh"
  }
}


