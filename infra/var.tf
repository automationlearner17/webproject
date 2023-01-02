variable "REGION" {

  default = "us-east-1"

}

variable "AMI" {

  type = map(any)
  default = {

    us-east-1 = "ami-061dbd1209944525c"


  }

}

variable "INS_TYPE" {

  type = map(any)
  default = {
    JENKINS = "t2.micro"
    SONAR   = "t2.medium"
    KOPS    = "t2.micro"
    ANSIBLE = "t2.micro"
    DOCKER  = "t2.micro"
  }

}

variable "KEYS" {


  type = map(any)
  default = {

    JENKINS = "jenkins-key.pub"
    SONAR   = "sonar-key.pub"
    KOPS    = "kops-key.pub"
    ANSIBLE = "ansible-key.pub"
    DOCKER  = "docker-key.pub"

  }

}
