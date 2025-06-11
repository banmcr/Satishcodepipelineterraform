
data "aws_region" "current" {}

resource "aws_security_group" "name" {
    name = "asd"
    vpc_id = "vpc-07b5343a7c443a28b"
    ingress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
    egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
}

output "regionname" {
  value = data.aws_region.current.id
}