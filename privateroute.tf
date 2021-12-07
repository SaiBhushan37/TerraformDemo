resource "aws_route_table" "terraform-private" {
    vpc_id = "${aws_vpc.Terraform-Main.id}"
    tags = {
        Name = "Terraform Private RoutingTable"
    }
}