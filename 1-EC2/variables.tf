variable "ami_id" {
  type    = string
  default = "ami-09c813fb71547fc4f"
}

variable "instance_type" {
  type    = string
  default = "t3.micro"
}

variable "tags" {
  type = map(any)
  default = {
    Name        = "Variables"
    Environment = "Dev"
    Component   = "Backend"
    Terraform   = "True"
    Project     = "Ericsson"
  }
}