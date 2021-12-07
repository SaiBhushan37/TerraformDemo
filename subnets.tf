resource "aws_subnet" "PublicSubnet" {
  count = length(var.subnetcidr)
  cidr_block = element(var.subnetcidr,count.index)
    vpc_id     = aws_vpc.Terraform-Main.id
    availability_zone = element(var.availability_zone,count.index)
    tags = {
    Name = "publicsubnets-${count.index+1}"
  }
}
resource "aws_subnet" "privateSubnet" {
  count = length(var.subnetcidr)
  cidr_block = element(var.Privatesubnetcidr,count.index)
    vpc_id     = aws_vpc.Terraform-Main.id
    availability_zone = element(var.availability_zone,count.index)
    tags = {
    Name = "privatesubnet-${count.index+1}"
  }
}




