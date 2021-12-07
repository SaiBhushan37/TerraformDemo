variable "vpccidr" {}
variable "instancesize" {}  
variable "enable_public_ip" {} 
variable "amiid" {}
variable "availability_zone" {
    type = list
     default = ["us-east-2a", "us-east-2b", "us-east-2c"]
     }
variable "subnetcidr" {
    type = list
    default = ["10.50.1.0/24", "10.50.2.0/24", "10.50.3.0/24","10.50.4.0/24"] 
}
variable "Privatesubnetcidr" {
    type = list
    default = ["10.50.20.0/24", "10.50.30.0/24", "10.50.40.0/24","10.50.50.0/24"] 
}
