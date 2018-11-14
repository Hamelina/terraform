resource "aws_route_table" "bar" {
  vpc_id = "${aws_vpc.main.id}"
  tags{
   Name="route_table"
  }
}





resource "aws_route_table_association" "a" {
  subnet_id      = "${aws_subnet.subnet1.id}"
  route_table_id = "${aws_route_table.bar.id}"
}

resource "aws_route_table_association" "b" {
  subnet_id      = "${aws_subnet.subnet2.id}"
  route_table_id = "${aws_route_table.bar.id}"
}

resource "aws_route_table_association" "c" {
  subnet_id      = "${aws_subnet.subnet3.id}"
  route_table_id = "${aws_route_table.bar.id}"
}
