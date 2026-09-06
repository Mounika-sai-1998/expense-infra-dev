terraform {
    required_providers {
        aws = { 
		   source = "hashicorp/aws"
           version = "6.39.0"
            } 
    }
    backend "s3" {
        bucket = "venkatlokesh-remote-state"
<<<<<<< HEAD
        key    = "jenkins"
=======
        key    = "jenkins-vpc"
>>>>>>> 7e384a2 (expense-infra-dev)
        region = "us-east-1"
	    #dynamodb_table = "mounika-locking"
        use_lockfile = true
   }
}

  # provides configuration
provider "aws" { 
    region = "us-east-1" 
}