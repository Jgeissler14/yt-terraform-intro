resource "aws_s3_bucket" "example" {
  bucket = "${var.project}-${var.env}"

  tags = {
    environment   = var.env
    project       = var.project
    created_on    = timestamp()
    project_owner = "josh@cloudzap.co"
  }
}