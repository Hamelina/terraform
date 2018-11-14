resource "aws_db_instance" "default" {
  allocated_storage    = 20
  storage_type         = "gp2"
  engine               = "mysql"
  engine_version       = "5.7.23"
  instance_class       = "db.t2.micro"
  name                 = "mydb"
  username             = "admin"
  password             = "unpasswordsuperlongettressecure"
  parameter_group_name = "default.mysql5.7"
  db_subnet_group_name = "${aws_db_subnet_group.db_subnet_group.name}"
  vpc_security_group_ids = [
 "${aws_security_group.ingress_mysql.id}"
 ]
}
