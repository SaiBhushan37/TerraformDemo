resource "aws_route_table_association" "terraform-public" {
  count =3
    subnet_id = "${element(aws_subnet.PublicSubnet.*.id, count.index)}"
    route_table_id = "${aws_route_table.terraform-public.id}"
}