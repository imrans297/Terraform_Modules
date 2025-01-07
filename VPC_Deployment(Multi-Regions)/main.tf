

module "vpc_mumbai" {
  source               = "./modules/vpc"
  
  providers = {aws = aws.mumbai}
  vpc_cidr_block       = var.vpc_cidr
  public_subnet1_cidr  = var.public_subnet_cidr1
  private_subnet1_cidr = var.private_subnet_cidr2
  public_subnet2_cidr  = var.public_subnet_cidr2
  private_subnet2_cidr = var.private_subnet_cidr1
  region = "ap-south-1"
}

module "vpc_virginia" {
  source               = "./modules/vpc"
  providers            = { aws = aws.virginia}
  vpc_cidr_block       = var.vpc_cidr
  public_subnet1_cidr  = var.public_subnet_cidr1
  private_subnet1_cidr = var.private_subnet_cidr2
  public_subnet2_cidr  = var.public_subnet_cidr2
  private_subnet2_cidr = var.private_subnet_cidr1
  region = "us-east-1"
}

module "vpc_ohio" {
  source               = "./modules/vpc"
  providers            = { aws = aws.ohio }
  vpc_cidr_block       = var.vpc_cidr
  public_subnet1_cidr  = var.public_subnet_cidr1
  private_subnet1_cidr = var.private_subnet_cidr2
  public_subnet2_cidr  = var.public_subnet_cidr2
  private_subnet2_cidr = var.private_subnet_cidr1
  region = "us-east-2"
}