provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "git_workflow_bucket" {
  bucket = "terraform-git-workflow-lab-demo"

  tags = {
    Name        = "terraform-git-workflow-lab"
    Environment = "dev"
    ManagedBy   = "Terraform"
    Owner       = "anthony"
  }
}
