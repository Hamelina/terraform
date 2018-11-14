resource "aws_security_group" "ingress_http" {
  name        = "security_group_ingress_http"
  description = "Allow access via port 80"
  vpc_id      = "${aws_vpc.main.id}"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }


  tags {
    Name = "allow access via port 80"
  }
}

resource "aws_security_group" "ingress_ssh" {
  name        = "security_group_ingress_ssh"
  description = "Allow access via port 22"
  vpc_id      = "${aws_vpc.main.id}"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }


  tags {
    Name = "allow access via port 22"
  }
}

resource "aws_security_group" "ingress_mysql" {
  name        = "security_group_ingress_mysql"
  description = "Allow access via port 3306"
  vpc_id      = "${aws_vpc.main.id}"

  ingress {
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    cidr_blocks = ["10.0.0.0/16"]
  }


  tags {
    Name = "allow access via port 3306"
  }
}

resource "aws_security_group" "egress_mysql" {
  name        = "security_group_egress_mysql"
  description = "Allow acces to db "
  vpc_id      = "${aws_vpc.main.id}"

  egress {
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    cidr_blocks = ["10.0.0.0/16"]
  }

  tags {
    Name = "allow access to db"
  }
}
