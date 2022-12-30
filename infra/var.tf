variable REGION {

 default = "us-east-1"

}

variable AMI {

 type = map
 default {

  us-east-1 = "ami-061dbd1209944525c" 
 

 } 

}

variable INS_TYPE {

 JENKINS = "t2.micro"
 SONAR = "t2.medium"
 KOPS = "t2.micro"
 ANSIBLE = "t2.micro"
 DOCKER = "t2.micro"


}

variable KEYS {


 type = map
 default {
 
 JENKINS = "jenkins-key"
 SONAR = "sonar-key"
 KOPS = "kops-key"
 ANSIBLE = "ansible-key"
 DOCKER = "docker-key"

 }

}
