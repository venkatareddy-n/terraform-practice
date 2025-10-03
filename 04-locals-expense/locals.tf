locals {
  zone_id = "Z04310266RYXPYRYCYZF"
  domain_name = "venkatswan.online"
  instance_type = var.environment == "prod" ? "t3.small" : "t3.micro"
}

# count.index will not work in locals