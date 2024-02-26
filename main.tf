module "vpc" {
  source = "./vendor/modules/vpc"
  VPC_CIDR = var.VPC_CIDR
}


# We cannot parametrize anything that's added in the source
# To limit that, we can use a tool called as Terrafile. All it does is, it clones the remote code fro the specified branch and make it locally available,


