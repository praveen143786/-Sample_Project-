provider "aws" {
region = "${var.region}"
}

resource "aws_instance" "test-maps" {
ami = "${lookup(var.ami,var.region)}"
instance_type = "t2.micro"

tags {
  Name = "test-maps"
 }
}
