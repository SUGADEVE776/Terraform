terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }
}
provider "aws" {
  region  = "us-east-2"
}

resource "aws_instance" "ec2" {
  ami           = var.ec2_ami
  instance_type = var.instance_type
  key_name = var.ec2_keypair
  count = var.ec2_count
  vpc_security_group_ids = ["${aws_security_group.ec2-sg.id}"]
  associate_public_ip_address = true
  subnet_id = element(var.subnets, count.index)

  tags = {
    Name = "${element(var.instance_names, count.index+1)}"
  }
}

