provider "aws" {
  region = "us-east-1"
  alias  = "us"
}

provider "aws" {
  region = "eu-central-1"
  alias  = "eu"
}

provider "aws" {
  region = "ap-southeast-1"
  alias  = "ap"
}

module "ghost_us_east_1" {
  source  = "./modules/ghost"
  providers = {
    aws = aws.us
  }
  ami = "ami-0c2b8ca1dad447f8a"
}

module "ghost_eu_central_1" {
  source  = "./modules/ghost"
  providers = {
    aws = aws.eu
  }
  ami = "ami-06d4d7b82ed5acff1"
}

module "ghost_ap_southeast_1" {
  source  = "./modules/ghost"
  providers = {
    aws = aws.ap
  }
  ami = "ami-0df7a207adb9748c7"
}