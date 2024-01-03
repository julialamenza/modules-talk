variable "instance_type" {
  description = "The type of instance to start"
  default     = "t2.micro"
}

variable "ami" {
  description = "The AMI to use for the instance"
}

variable "key_name" {
  description = "The key name to use for the instance"
  default     = null
}