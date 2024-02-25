module "vpc" {
  source = "git::https://github.com/Koushik-Ramesh/tf-module-vpc.git?ref=main"
}


# We cannot parametrize anything that's added in the source
# To limit that, we can use a tool called as Terrafile. All it does is, it clones the remote code fro the specified branch and make it locally available,


