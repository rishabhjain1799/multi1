provider "aws" {
  region = "ap-south-1"
  profile = "rishabh"
}

resource "aws_ebs_volume" "v1" {
  availability_zone = "ap-south-1b"
  size              = 1
  
  tags = {
    Name = "rishuv1"
  }
}

resource "aws_volume_attachment" "ebs_att" {
  device_name = "/dev/sdh"
  volume_id   = "${aws_ebs_volume.v1.id}"
  instance_id = "i-04eb4c02ff33f987d"
  force_detach = true
}



