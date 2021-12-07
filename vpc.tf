resource "aws_vpc" "Terraform-Main" {
  cidr_block = var.vpccidr
  tags = {
    Name = "Terraform Main"
  }
}