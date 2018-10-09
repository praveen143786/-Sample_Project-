variable "region" {
  default = "ap-south-1"
}

#variable "ami" {
#  type = "map"
#  default = {
#    ap-south-1 = "ami-0034f06f452051501"
#    us-east-2 = "ami-0fb9cc4fd05021109"
#  }
#}

variable "vpc_cidr" {
default = "192.168.0.0/16"
}

variable "sub_cidr" {
type = "list"
default = ["192.168.10.0/24","192.168.20.0/24"]
}

#variable "az" {
#type = "list"
#default = ["ap-south-1a","ap-south-1b"]
#}

data "aws_availability_zones" "reddy" {}
