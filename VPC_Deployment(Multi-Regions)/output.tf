output "vpc_details" {
  description = "Details of created VPCs"
  value = {
    Mumbai = module.vpc_mumbai.vpc_mumbai_id,
    Virginia  = module.vpc_virginia.vpc_virginia_id
    Ohio = module.vpc_ohio.vpc_ohio_id
  }
}

