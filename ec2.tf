resource "aws_instance" "Terraform-ec2" {
    count = 3
    ami = var.amiid
    instance_type = var.instancesize
    subnet_id = "${element(aws_subnet.PublicSubnet.*.id, count.index)}"
    associate_public_ip_address = var.enable_public_ip
    vpc_security_group_ids = [aws_security_group.allow_all.id]
    tags = {
      Name = "Terraform machine-${count.index+1}"
    }
}