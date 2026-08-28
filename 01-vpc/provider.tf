terraform {
    required_providers {
        aws = { 
		   source = "hashicorp/aws"
<<<<<<< HEAD
           version = "6.39.0"
=======
           version = "6.61.0"
>>>>>>> 6e09691bd4a1bbb71a062dc047118ff6fc16a57c
            } 
    }
    backend "s3" {
        bucket = "venkatlokesh-remote-state"
<<<<<<< HEAD
        key    = "vpc-jenkins"
=======
        key    = "jenkins"
>>>>>>> 6e09691bd4a1bbb71a062dc047118ff6fc16a57c
        region = "us-east-1"
	    #dynamodb_table = "mounika-locking"
        use_lockfile = true
   }
}

  # provides configuration
provider "aws" { 
    region = "us-east-1" 
}