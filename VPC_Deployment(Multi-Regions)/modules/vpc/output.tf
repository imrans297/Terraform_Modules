output "vpc_mumbai_id" {
    value =  aws_vpc.project_vpc.id
}

output "vpc_virginia_id" {
    value =  aws_vpc.project_vpc.id
}

output "vpc_ohio_id" {
    value =  aws_vpc.project_vpc.id
}


output "public_subnet_id1" {
  description = "ID of the public subnet"
  value       = aws_subnet.public_subnet1.id
}

output "public_subnet_id2" {
  description = "ID of the public subnet"
  value       = aws_subnet.public_subnet1.id
}


output "private_subnet_id1" {
  description = "ID of the private subnet"
  value       = aws_subnet.private_subnet1.id
}

output "private_subnet_id2" {
  description = "ID of the private subnet"
  value       = aws_subnet.private_subnet2.id
}
