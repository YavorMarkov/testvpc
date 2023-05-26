provider "aws" {
  region = "eu-central-1"  # update with your desired region
}

resource "aws_vpc" "test_vpc" {
  cidr_block = "10.0.0.0/16"
  
  tags = {
    Name = "TestVPC"
  }
}

resource "aws_subnet" "test_subnet" {
  vpc_id     = aws_vpc.test_vpc.id
  cidr_block = "10.0.1.0/24"
  
  tags = {
    Name = "TestSubnet"
  }
}
