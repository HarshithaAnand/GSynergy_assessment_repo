resource "aws_db_instance" "myDatabase" {
    allocated_storage   = var.dbstorage
   storage_type        = "gp2"
   identifier          = "rdstf"
   engine              = "mysql"
   engine_version      = "8.0.27"
   instance_class      = "db.t2.micro"
   username            = "admin"
   password            = "password"
   publicly_accessible = true
   skip_final_snapshot = true

   tags = {
     Name = "myDatabase"
   }
 }
