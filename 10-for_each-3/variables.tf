variable "ami_id" {
  type    = string
  default = "ami-0ad50334604831820"
}

variable "instance_names" {
  type = map(any)
  default = {
    mysql    = "t3.micro"
    frontend = "t2.micro"
    backend  = "t2.micro"
  }
}