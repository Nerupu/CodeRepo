resource "aws_s3_bucket" "terraform_infra" {
  bucket = "appp-skajsk-asakns"
  acl    = "private"
  force_destroy = true

  # To allow rolling back states
  versioning {
    enabled = true
  }

  tags = {
     Name = "terraform-backend"
  }
}

resource "aws_dynamodb_table" "dynamodb-table" {
  name           = "terraform-backend-lock"
  billing_mode   = "PROVISIONED"
  read_capacity  = 2
  write_capacity = 2
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }

  tags = {
     Name = "Terraform Lock Table"
  }
}
