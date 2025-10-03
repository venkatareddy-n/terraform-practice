variable "instance_names" {
  type        = list(string)
  default     = ["mysql", "backend", "frontend"]
  description = "these are variables for instances"
}

variable "environment" {
  type        = string
  default     = "prod"
}


# variable "zone_id" {
#   default = "Z04310266RYXPYRYCYZF"
# }

# variable "domain_name" {
#   default = "venkatswan.online"
# }

