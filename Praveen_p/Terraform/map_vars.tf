variable "region" {
  default = "us-east-2"
}

variable "ami" {
  type = "map"
  default = {
    ap-south-1 = "ami-0034f06f452051501"
    us-east-2 = "ami-0fb9cc4fd05021109"
  }
}
