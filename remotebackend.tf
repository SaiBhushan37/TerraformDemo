terraform {
  backend "s3" {
    bucket = "saiterraformbucket"
    key    = "myterraform.tfstate"
    region = "us-east-2"
  }
}