terraform {
    required_providers {
        aws = { 
		   source = "hashicorp/aws"
           version = "6.39.0"
            } 
    }
    backend "s3" {
        bucket = "mounikasai-remote-state"
        key    = "expense-dev-app-alb"
        region = "us-east-1"
        dynamodb_table = "mounika-locking"
   }
}

  # provides configuration
provider "aws" { 
    region = "us-east-1" 
}