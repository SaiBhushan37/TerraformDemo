resource "aws_route_table_association" "terraform-private" {
  count =3
    subnet_id = "${element(aws_subnet.privateSubnet.*.id, count.index)}"
    route_table_id = "${aws_route_table.terraform-private.id}"
}