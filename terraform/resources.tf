 resource "aws_instance" "slim" {
  ami                         = var.web_instance_info.ami
  instance_type               = "t2.micro"
  associate_public_ip_address = true
  vpc_security_group_ids      = [aws_security_group.all.id]
  subnet_id                   = aws_subnet.web[0].id
  key_name                    = var.web_instance_info.key_name



  tags = {

    Name = var.web_instance_info.name

  }

  user_data = file("install.sh")




  depends_on = [

    aws_subnet.web,

    aws_subnet.web2,

  ]
}
   
