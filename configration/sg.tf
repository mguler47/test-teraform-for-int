esource "aws_security_group" "allow_ssh" { 
  name        = "allow_ssh" 
  description = "Allow TLS inbound traffic" 
  vpc_id      = "vpc-a0c880da" 

  ingress { 
      from_port   = 22 
      to_port     = 22 
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"] 
}

  ingress { 
      from_port   = 443 
      to_port     = 22 
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]   

}
  ingress { 
      from_port   = 80 
      to_port     = 22 
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"] 
}

  ingress { 
      from_port   = 8080 
      to_port     = 22 
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"] 
}