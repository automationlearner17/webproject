resource "aws_instance" "Jenkins" {
  ami                    = var.AMI[var.REGION]
  instance_type          = var.INS_TYPE["JENKINS"]
  key_name               = aws_key_pair.jenkins-key.key_name
  vpc_security_group_ids = [aws_security_group.jenkins-SG.id]

  tags = {
    Name = "JenkinsWebPro"
  }
}

resource "aws_instance" "Sonar" {
  ami                    = var.AMI[var.REGION]
  instance_type          = var.INS_TYPE["SONAR"]
  key_name               = aws_key_pair.sonar-key.key_name
  vpc_security_group_ids = [aws_security_group.sonar-SG.id]
  tags = {
    Name = "SonarWebPro"
  }
}

resource "aws_instance" "kops" {
  ami                    = var.AMI[var.REGION]
  instance_type          = var.INS_TYPE["KOPS"]
  key_name               = aws_key_pair.kops-key.key_name
  vpc_security_group_ids = [aws_security_group.Kops-SG.id]

  tags = {
    Name = "kopsWebPro"
  }
}

resource "aws_instance" "ansible" {
  ami                    = var.AMI[var.REGION]
  instance_type          = var.INS_TYPE["ANSIBLE"]
  key_name               = aws_key_pair.ansible-key.key_name
  vpc_security_group_ids = [aws_security_group.ansible-SG.id]

  tags = {
    Name = "ansibleWebPro"
  }
}

resource "aws_instance" "docker" {
  ami                    = var.AMI[var.REGION]
  instance_type          = var.INS_TYPE["DOCKER"]
  key_name               = aws_key_pair.docker-key.key_name
  vpc_security_group_ids = [aws_security_group.docker-SG.id]

  tags = {
    Name = "dockerWebPro"
  }
}
