provider "aws" {
  region     = var.region
}

resource "aws_security_group" "allow_https" {
  name        = var.sg_name
  description = "Allow https traffic"
  vpc_id      = var.vpc_id

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
