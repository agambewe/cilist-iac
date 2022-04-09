terraform {
    required_providers {
        aws = {
        source  = "hashicorp/aws"
        version = "4.3.0"
        }
    }
    # required_version = "~> 1.0.2"
}

provider "aws" {
    shared_config_files      = ["/home/bewe/.aws/config"]
    shared_credentials_files = ["/home/bewe/.aws/credentials"]
    profile                  = "default"
}