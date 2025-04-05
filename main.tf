################################################################################
# RDS Module
################################################################################
module "rds_db_instance" {
  source            = "terraform-aws-modules/rds/aws"
  identifier        = "mylatestdefault"
  allocated_storage = 20
  engine            = "mysql"
  engine_version    = "8.0"
  instance_class    = "db.t4g.micro"
  db_name           = "completeMysql"
  username          = "complete_mysql"
  password          = "Admin#1234!"

  create_db_option_group    = false
  create_db_parameter_group = false
  manage_master_user_password = false
  auto_minor_version_upgrade = false
}
