
resource "aws_instance" "example" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name      = var.key_name
  subnet_id     = tolist(data.aws_subnet_ids.default.ids)[0]

}