module "ec2" {
  source = "./modules/ec2"

  ami     = "ami-12345678"
  key_name = "your-key-pair"

}

module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = "single-instance"

  instance_type          = "t2.micro"
  key_name               = "user1"
  monitoring             = true

}