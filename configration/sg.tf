resource "aws_security_group" "allow_ssh" { 
  name        = "allow_ssh" 
  description = "Allow TLS inbound traffic" 
  vpc_id      = "vpc-9b3b24fd" 

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

}   ingress { 
    from_port   = 80 
    to_port     = 22 
    protocol    = "tcp" 
    cidr_blocks = ["0.0.0.0/0"]   

}   ingress { 
    from_port   = 8080 
    to_port     = 22 
    protocol    = "tcp" 
    cidr_blocks = ["0.0.0.0/0"]   

} 

egress { 
    from_port       = 0 
    to_port         = 0 
    protocol        = "-1" 
    cidr_blocks     = ["0.0.0.0/0"] 
  } 
} 