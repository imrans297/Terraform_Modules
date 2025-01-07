
###VPC
resource "aws_vpc" "project_vpc" {
  cidr_block           = var.vpc_cidr_block
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags = {
    Name = "${var.region}-VPC-Project"
  }
}

resource "aws_internet_gateway" "project_igw" {
  vpc_id = aws_vpc.project_vpc.id
  tags = {
    Name = "${var.region}-Internet-Gateway"
  }
}

# Public Subnet 1
resource "aws_subnet" "public_subnet1" {
  vpc_id                  = aws_vpc.project_vpc.id
  cidr_block              = var.public_subnet1_cidr
  map_public_ip_on_launch = true
  tags = {
    Name = "${var.region}-Public-Subnet1"
  }
}

# Public Subnet 2
resource "aws_subnet" "public_subnet2" {
  vpc_id                  = aws_vpc.project_vpc.id
  cidr_block              = var.public_subnet2_cidr
  map_public_ip_on_launch = true
  tags = {
    Name = "${var.region}-Public-Subnet2"
  }
}

## Private Subnet 1
resource "aws_subnet" "private_subnet1" {
  vpc_id            = aws_vpc.project_vpc.id
  cidr_block        = var.private_subnet1_cidr
  tags = {
    Name = "${var.region}-Private-Subnet1"
  }
}

## Private subnet 2
resource "aws_subnet" "private_subnet2" {
  vpc_id            = aws_vpc.project_vpc.id
  cidr_block        = var.private_subnet2_cidr
  tags = {
    Name = "${var.region}-Private-Subnet2"
  }
}

resource "aws_route_table" "public_route_table" {
  vpc_id = aws_vpc.project_vpc.id
  tags = {
    Name = "${var.region}-Public-RT"
  }
}

resource "aws_route" "public_route" {
  route_table_id         = aws_route_table.public_route_table.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.project_igw.id
}

resource "aws_route_table_association" "public_association1" {
  subnet_id      = aws_subnet.public_subnet1.id
  route_table_id = aws_route_table.public_route_table.id
}

resource "aws_route_table_association" "public_association2" {
  subnet_id      = aws_subnet.public_subnet2.id
  route_table_id = aws_route_table.public_route_table.id
}



resource "aws_eip" "my_eip" {
  tags = {
    Name = "${var.region}-MY-EIP"
  }
}

resource "aws_nat_gateway" "my_nat_gw" {
  allocation_id = aws_eip.my_eip.id
  subnet_id     = aws_subnet.public_subnet1.id
  tags = {
    Name = "${var.region}-NAT-Gateway"
  }
}

resource "aws_route_table" "private_route_table" {
  vpc_id = aws_vpc.project_vpc.id
  tags = {
    Name = "${var.region}-Private-RT"
  }
}

resource "aws_route" "private_route" {
  route_table_id         = aws_route_table.private_route_table.id
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = aws_nat_gateway.my_nat_gw.id
}

resource "aws_route_table_association" "private_association1" {
  subnet_id      = aws_subnet.private_subnet1.id
  route_table_id = aws_route_table.private_route_table.id
}
resource "aws_route_table_association" "private_association2" {
  subnet_id      = aws_subnet.private_subnet2.id
  route_table_id = aws_route_table.private_route_table.id
}