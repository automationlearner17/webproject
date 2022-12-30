

provider "aws" {

  region = "us-east-1"

}

resource "aws_key_pair" "jenkins-key" {

  key_name   = "jenkinsWebPro-key"
  public_key = file("jenkins-key.pub")

}
