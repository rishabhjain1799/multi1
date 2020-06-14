provider "aws" {
  region = "ap-south-1"
  profile = "rishabh"
}

resource "aws_s3_bucket" "b" {
  bucket = "rishu1234"
  acl    = "private"

  tags = {
    Name = "rishu1234"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_object" "object" {
  depends_on = [
    aws_s3_bucket.b
   ]
  bucket = "rishu1234"
  key    = "me.jpg"
  source = "D:\\Videos and Pics\\me.jpg"
  etag = "${filemd5("D:\\Videos and Pics\\me.jpg")}"
}