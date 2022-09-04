provider "aws" {
  region = var.region
}

# Data source 
# Use this data source to get the ID of a registered AMI for use in other resources.
# data "aws_ami" "ubuntu" {
#   most_recent = true

#   filter {
#     name   = "name"
#     values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
#   }

#   filter {
#     name   = "virtualization-type"
#     values = ["hvm"]
#   }

#   owners = ["099720109477"] # Canonical
# }

resource "aws_instance" "ubuntu" {
  ami           = "ami-08d4ac5b634553e16"
  instance_type = var.instance_type

  tags = {
    Name = var.instance_name
  }
}
