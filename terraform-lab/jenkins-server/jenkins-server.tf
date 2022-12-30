

resource "aws_instance" "Jenkins-server" {

  ami                    = "ami-061dbd1209944525c"
  instance_type          = "t2.micro"
  key_name               = aws_key_pair.jenkins-key.key_name
  vpc_security_group_ids = [aws_security_group.jenkins-sg.id]
  tags = {

    Name = "Jenkins-WebPro_server"

  }



}
