resource "aws_instance" "web" {
  ami                    = "ami-01a4f99c4ac11b03c"
  instance_type          = "t2.micro"
  availability_zone = "ap-south-1a"
  vpc_security_group_ids = [aws_security_group.allow_tls.id]
  key_name = "xxx"

  tags = {
    Name = "Target"
  }

 
}
