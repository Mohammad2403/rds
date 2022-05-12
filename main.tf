resource "aws_db_instance" "default" {
allocated_storage = 20
identifier = "testinstance"
storage_type = "gp2"
engine = "mysql"
engine_version = "5.7"
instance_class = "db.m4.large"
name = "test"
username = "admin"
password = "Admin@54132"
parameter_group_name = "default.mysql5.7"
}resource "aws_db_instance" "default" {
allocated_storage = 20
identifier = "testinstance"
storage_type = "gp2"
engine = "mysql"
engine_version = "5.7"
instance_class = "db.m4.large"
name = "test"
username = "admin"
password = "Admin@54132"
parameter_group_name = "default.mysql5.7"
}