# bootstrap/main.tf

provider "aws" {
  region = "var.aws_region"
}

variable "aws_region" {
  default = "ca-central-1"
}

resource "aws_s3_bucket" "tf_state" {
  bucket = "my-terraform-state-bucket"
  acl    = "private"
  key    = "finance/terraform.tfstate"
  region = "ca-central-1"
  versioning {
        enabled = true
    }

  tags = {
    Name = "Terraform state bucket"
  }
}
