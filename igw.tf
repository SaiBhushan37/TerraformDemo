resource "aws_internet_gateway" "igw" {
    vpc_id = "${aws_vpc.Terraform-Main.id}"
	tags = {
        Name = "TerraformIgw"
    }
}