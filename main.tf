provider "aws" {
  region = "us-east-2"
  access_key = "AKIAINBIW4LHGDVK"
  secret_key = "diRs44gxTa4wVosjUD1phTd+FLnFVF"
}

# resource "aws_instance" "my-first-server" {
#   ami = "ami-0dd9f0e7df0f0a138"
#   instance_type = "t2.micro"

#   tags = {
#     "Name" = "Ubuntu"
#   }
# }

resource "aws_vpc" "first-vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    "Name" = "production"
  }
}

resource "aws_subnet" "subnet-1" {
  vpc_id     = aws_vpc.first-vpc.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "prod-subnet"
  }
}


# 1. Create vpc
# 2. Create Internet gateway
# 3. Create Custom Route Table
# 4. Create a Subnet
# 5. Associate subnet with Route Table
# 6. Create Security Group to allow port 22,80,443
# 7. Create a network interface with an ip oin the subnet that was created in steop4
# 8. 