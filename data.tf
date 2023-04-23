// data "aws_security_group" "sg1" {
// name = "webserver"
// id   = "sg-0b833601ca639859a"

//}

data "aws_ami" "ami" {
  most_recent = true
  owners      = ["amazon"]
  filter {
    name   = "name"
    values = ["amzn2-ami-kernel-5.10-hvm-*-gp2"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}
data "aws_route53_zone" "nousstaty" {
  name = "nousstaty.org."

}