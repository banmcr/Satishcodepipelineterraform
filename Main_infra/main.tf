
data "aws_region" "current" {}

resource "aws_security_group" "name" {
    name = "asd"
    vpc_id = "vpc-07b5343a7c443a28b"
    description = "asdsad"
    ingress {
    from_port        = "-1"
    to_port          = "-1"
    protocol         = "icmp"
    cidr_blocks      = ["1.1.1.1/32"]
    description = "icmp"

  }
    egress {
    from_port        = "-1"
    to_port          = "-1"
    protocol         = "icmp"
    cidr_blocks      = ["1.1.1.1/32"]
    description = "icmp"

  }
}

output "regionname" {
  value = data.aws_region.current.id
}