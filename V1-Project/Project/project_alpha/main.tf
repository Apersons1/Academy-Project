# ---------------------------------------Here Begins out project----------------------------------------------
terraform {
  # -----------Runs Terraform-----------
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.55.0"
    }
  }
  # ---------------END------------------

  # backend "s3" {
  #   bucket = "testing-tfstate-2024"
  #   key = "tf_state_file/Terraform.tfstate"
  #   region = "eu-west-2"
  #   dynamodb_table = "terraform-state-locking-2024"
  # }
  
  #   # hashi core cloud
  #   cloud {
  #   organization = "Birmingham_terraform"

  #   workspaces {
  #     name = "Birmingham_demo"
  #   }
  # }

}

# Dont put your access keys here. only test.
provider "aws" {
  region     = "eu-west-2"
  # access_key = 
  # secret_key = 
}

#----------------------Hashi Corp vault------------------------
# provider "vault"{
#   address = ""
#   token = ""
# }

# data "vault_generic_secret" "demo" {
#   # Bad spelling but works
#   path =  "secreates/access"
# }

# resource "null_resource" "namecheck_system_health" {
#   provisioner "local-exec"{
#     command = "curl https://google.com"
#   }
# }

# ------------------------------------------------------------
# resource "aws_instance" "Thisone" {
#   ami = "ami-0fe310dde2a8fdc5c"
#   instance_type = "t2.micro"
# }


# module "ec2_instance" {
#   source        = "./../../Modules/ec2s"
#   instance_size = var.project_instance_type

# }

# module "eip_001" {
#   source = "../../Modules/eips"
# }

# output "out_eip_public_ip" {
#   value = module.eip_001.eip_public_ip

# }

# module "aws_ec2_instance"{
#   source ="git::https://github.com/terraform-aws-modules/terraform-aws-ec2-instance"

# }