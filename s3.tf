
resource "aws_s3_bucket" "itisbucket123123123" {
  bucket = "itissyncrofazotronbucket"

  tags = {
    Name        = "is bucket"
    Environment = "tImDevOps"
  }
}