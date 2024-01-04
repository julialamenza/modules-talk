resource "aws_instance" "web" {
  count         = var.servers
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t2.micro"
  key_name      = "julia"

  tags = {
    Name = "HelloWorld"
  }
}