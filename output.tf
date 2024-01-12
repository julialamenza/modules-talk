output "ip_address" {
  value = module.ec2.ip_address
}
output "public_ip" {
  
  value       = module.ec2_instance.public_ip
}