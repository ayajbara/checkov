module "s3_bucket" {
  source = "cloudposse/s3-bucket/aws"
  version = "0.3.4"
  acl                      = "private"
  enabled                  = true
  user_enabled             = true
  versioning_enabled       = false
  allowed_bucket_actions   = ["s3:GetObject", "s3:ListBucket", "s3:GetBucketLocation"]
  name                     = "app"
  stage                    = "test"
  namespace                = "eg"
}

module "latest_s3_bucket" {
  source = "cloudposse/s3-bucket/aws"
  version = "0.2.4"
  acl                      = "private"
  enabled                  = true
  user_enabled             = true
  versioning_enabled       = false
  allowed_bucket_actions   = ["s3:GetObject", "s3:ListBucket", "s3:GetBucketLocation"]
  name                     = "app"
  stage                    = "test"
  namespace                = "eg"
}



module "latest_s3_bucket" {
  source = "cloudposse/s3-bucket/aws"
  version = "0.47.4"
  acl                      = "private"
  enabled                  = true
  user_enabled             = true
  versioning_enabled       = false
  allowed_bucket_actions   = ["s3:GetObject", "s3:ListBucket", "s3:GetBucketLocation"]
  name                     = "app"
  stage                    = "test"
  namespace                = "eg"
}

