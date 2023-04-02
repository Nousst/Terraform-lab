
output "public-ip" {
  value = "aws_instance.demo1"

}
output "private_ip" {
  value = aws_instance.demo1.id

}
output "private-ip" {
  value = aws_instance.demo1.private_ip

}
