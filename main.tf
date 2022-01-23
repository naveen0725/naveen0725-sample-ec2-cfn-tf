terraform {
    required_providers {
        aws ={
        source = "hashicorp/aws"
        version = "~>3.27"
        }
    }

//required_version = ">1.1.14"
}

provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

resource "aws_instance" "ec2_instance" {
    ami = "ami-08e4e35cccc6189f4"
    instance_type = "t3.micro"
    tags ={
        Name = "testservice"
    }

}