
# Provider Configuration
provider "aws" {
  region = "us-west-1" # Example for AWS, adjust for your cloud provider
}

# Variable Declarations
variable "instance_type" {
  description = "Type of instance"
  default     = "t2.micro"
}

variable "ami" {
  description = "The AMI to use for the server"
  default     = "ami-0c55b159cbfafe1f0"
}

# Data Sources
data "aws_vpc" "default" {
  default = true
}

# Resources
resource "aws_instance" "example" {
  ami           = var.ami
  instance_type = var.instance_type

  tags = {
    Name = "example-instance"
  }

  # Use provisioners for specific scenarios, like bootstrapping or error-handling
  # provisioner "local-exec" {
  #   command = "echo 'Done!'"
  # }

  # provisioner "remote-exec" {
  #   inline = [
  #     "sudo apt-get update",
  #     "sudo apt-get install -y nginx"
  #   ]
  # }
}

# Outputs
output "instance_public_ip" {
  value = aws_instance.example.public_ip
}

# Locals
locals {
  example = "This is a local value"
}

# TODO: Add modules if you have reusable pieces of infrastructure.

# For testing Terraform code, consider using tools like kitchen-terraform or terratest.
# You'd write tests in a separate file and framework, but this is a reminder to do so.
