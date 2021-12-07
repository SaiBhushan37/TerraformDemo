resource "aws_route_table" "terraform-public" {
    vpc_id = "${aws_vpc.Terraform-Main.id}"

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = "${aws_internet_gateway.igw.id}"
    }

    tags = {
        Name = "Terraform Public RoutingTable"
    }
}