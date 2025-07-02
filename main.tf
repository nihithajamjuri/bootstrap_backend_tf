# bootstrap/main.tf backend

provider "aws" {
  region = var.aws_region
}

variable "aws_region" {
  default = "ca-central-1"
}

resource "aws_s3_bucket" "tf_state" {
  bucket = "nihi9-terraform-state-bucket"
  acl    = "private"
  region = "ca-central-1"
  versioning {
        enabled = true
    }

  tags = {
    Name = "Terraform state bucket"
  }
}
