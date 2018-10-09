# create a dynamodb table to prevent state lock

resource "aws_dynamodb_table" "dynamodb-terraform-state-lock" {
name = "terraform-state-lock-dynamo"
hash_key = "LockID"
read_capacity = 20
write_capacity = 20

attribute {
name = "LockID"
type = "S"
}

tags {
Name = "DynamoDB Terraform State Lock Table"
 }
}

# created S3 bucket to store state file remotely so that everyone in the office can access.

terraform {
 backend "s3" {
 encrypt = true
 bucket = "bucket-name"
 dynamodb_table = "terraform-state-lock-dynamo"       #add the dynamo db table in S3.
 region = "ap-south-1"
 key = "tf-files/terraform.tfstate"
 }
}
