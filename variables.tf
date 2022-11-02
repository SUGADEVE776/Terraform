variable "ec2_ami" {
  default = "ami-092b43193629811af"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "ec2_keypair" {
  default = "dev"
}

variable "ec2_count" {
  type = number
  default = "3"
}

variable "instance_names" {
  default = ["Ansible-server", "Node1","Node2"]
}
variable "vpc_id" {
  default = "	vpc-cae18aa1"
}
variable "subnets" {
   default = ["subnet-7105961a","subnet-7105961a","subnet-7105961a"]
}


