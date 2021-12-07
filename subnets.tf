resource "aws_subnet" "Subnet-1" {
  cidr_block = var.subnetcidr1
    vpc_id     = aws_vpc.Terraform-Main.id
    availability_zone = "us-east-2a"
    tags = {
    Name = "Terraform Public Subnet 1"
  }
}
resource "aws_subnet" "Subnet-2" {
  cidr_block = var.subnetcidr2
    vpc_id     = aws_vpc.Terraform-Main.id
    availability_zone = "us-east-2a"
    tags = {
    Name = "Terraform Public Subnet 1"
  }
}
resource "aws_subnet" "Subnet-3" {
  cidr_block = var.subnetcidr3
    vpc_id     = aws_vpc.Terraform-Main.id
    availability_zone = "us-east-2a"
    tags = {
    Name = "Terraform Public Subnet 1"
  }
}