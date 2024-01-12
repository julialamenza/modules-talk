module "ec2" {
  
  source = "./modules/ec2"
    servers = var.servers
    ami = var.ami
}

module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = "single-instance"

  instance_type          = "t3.micro"
  monitoring             = true

}