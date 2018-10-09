provider "aws" {
region = "ap-south-1"
}

resource "aws_vpc" "reddy" {
cidr_block = "192.168.0.0/16"
instance_tenancy = "default"

tags {
  Name = "reddy vpc"
 }
}

resource "aws_subnet" "subnet-1" {
vpc_id = "${aws_vpc.reddy.id}"
cidr_block = "192.168.10.0/24"

tags {
  Name = "pub-sub"
  }
}

resource "aws_internet_gateway" "reddy" {
vpc_id = "${aws_vpc.reddy.id}"
}

resource "aws_security_group" "reddy" {
name = "terra-sg"
  ingress {
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]}
}
