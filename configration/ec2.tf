resource "aws-instance" "instance" {
    ami = var.ami
    instance_type = var.instance_type
    key_name = var.key_name
tags = {
    name = var.environmnet 
}  
}