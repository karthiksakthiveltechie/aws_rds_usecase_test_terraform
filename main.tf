# module "rds_example-mysql-test" {
#   source  = "terraform-aws-modules/rds/aws//examples/complete-mysql"
#   version = "6.11.0"
# }

resource "aws_db_instance" "demo-rds" {
  allocated_storage    = 20
  db_name              = "mydb-rds-test"
  engine               = "mysql"
  engine_version       = "8.0"
  instance_class       = "db.t3.micro"
  username             = "admin"
  password             = "Admin@1234!"
  parameter_group_name = "default.mysql8.0"
  skip_final_snapshot  = true
}