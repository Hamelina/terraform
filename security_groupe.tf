resource "aws_security_group" "security_group1" {
  name        = "security_group1"
  description = "Allow access via port 80"
  vpc_id      = "${aws_vpc.main.id}"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "HTTP"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags {
    Name = "allow access via port 80"
  }
}

resource "aws_security_group" "security_group2" {
  name        = "security_group2"
  description = "Allow acces to db "
  vpc_id      = "${aws_vpc.main.id}"

  egress {
    from_port   = 3306
    to_port     = 3306
    protocol    = "TCP"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags {
    Name = "allow access to db"
  }
}
