provider "aws" {
region = "${var.region}"
}

#resource "aws_instance" "test-maps" {
#ami = "${lookup(var.ami,var.region)}"
#instance_type = "t2.micro"

#tags {
#  Name = "test-maps"
# }
#}

resource "aws_vpc" "red" {
cidr_block = "${var.vpc_cidr}"
instance_tenancy = "default"

tags {
  Name = "red-vpc"
 }
}

resource "aws_subnet" "red-sub" {
count = "${length(data.aws_availability_zones.reddy.names)}"
  
#inorder to prevent terraform to create subnets in same AZ we use availability_zone resource. this is only when you use data source for AZ.
availability_zone = "${element(data.aws_availability_zones.reddy.names,count.index)}"
vpc_id = "${aws_vpc.red.id}"
cidr_block = "${element(var.sub_cidr,count.index)}"

tags {
  Name = "subnet${count.index+1}"
 }
}
