resource "aws_key_pair" "jenkins-key" {
  key_name   = "jenkinsWebPro"
  public_key = file(var.KEYS[JENKINS])

}

resource "aws_key_pair" "sonar-key" {

 key_name = "sonarWebPro"
 public_key = file(var.KEYS[SONAR])

}

resource "aws_key_pair" "kops-key" {

 key_name = "kopsWebPro"
 public_key = file(var.KEYS[KOPS])


}


resource "aws_key_pair" "ansible-key" {

 key_name = "ansibleWebPro"
 public_key = file(var.KEYS[ANSIBLE])


}

resource "aws_key_pair" "docker-key" {

 key_name = "dockerWebPro"
 public_key = file(var.KEYS[DOCKER])


}
