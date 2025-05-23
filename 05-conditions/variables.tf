variable "environment" {
  default = "prod"
}

variable "ami_id" {
  type    = string
  default = "ami-09c813fb71547fc4f"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "from_port" {
  type    = number
  default = 22
}

variable "to_port" {
  type    = number
  default = 22
}

variable "protocol" {
  type    = string
  default = "tcp"
}

variable "ingress_cidr" {
  type    = list(string)
  default = ["0.0.0.0/0"]
}

variable "tags" {
  type = map(any)
  default = {
    Name        = "05-conditions"
    Environment = "Dev"
    Component   = "Backend"
    Terraform   = "True"
    Project     = "Expense"
  }
}