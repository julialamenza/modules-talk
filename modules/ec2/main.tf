resource "aws_instance" "web" {
  count         = var.servers
  ami           = var.ami
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld"
  }
}