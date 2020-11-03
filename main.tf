provider "aws" {
  region     = "us-east-1"
  
}


resource "aws_elastic_beanstalk_application" "tf-test" {
  name        = "bean-app"
  description = "teste terraform"
}

resource "aws_elastic_beanstalk_environment" "tf-env-test" {
  name                = "bean-env"
  application         = aws_elastic_beanstalk_application.tf-test.name
  solution_stack_name = "64bit Amazon Linux 2018.03 v2.17.0 running Go 1.15.2 "
  tier = "Worker"

setting {
        namespace = "aws:autoscaling:launchconfiguration"
        name      = "IamInstanceProfile"
        value     = "aws-elasticbeanstalk-ec2-role"
      
        }
}



