terraform {
    required_providers {
        aws = { 
		   source = "hashicorp/aws"
           version = "6.39.0"
            } 
    }
    backend "s3" {
<<<<<<< HEAD
        bucket = "mounikasai-remote-state"
        key    = "expense-frontend-dev"
        region = "us-east-1"
        dynamodb_table = "mounika-locking"
=======
        bucket = "venkatlokesh-remote-state"
        key    = "frontend-jenkins"
        region = "us-east-1"
	    #dynamodb_table = "mounika-locking"
        use_lockfile = true
>>>>>>> 7e384a2 (expense-infra-dev)
   }
}

  # provides configuration
provider "aws" { 
    region = "us-east-1" 
}