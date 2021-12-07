resource "aws_instance" "Terraform-ec2" {
    ami = var.amiid
    instance_type = var.instancesize
    subnet_id = aws_subnet.Subnet-1.id
    count = var.instancecount
    associate_public_ip_address = var.enable_public_ip
    availability_zone = "us-east-2a"
    tags = {
      Name = var.instancename[count.index]