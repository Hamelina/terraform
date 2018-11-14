resource "aws_db_subnet_group" "db_subnet_group" {
  name       = "subnet_group"
  subnet_ids = ["${aws_subnet.subnet1.id}", "${aws_subnet.subnet2.id}", "${aws_subnet.subnet3.id}"]

  tags {
    Name = "My DB subnet group"
  }
}
