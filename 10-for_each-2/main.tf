resource "aws_instance" "terraform_server" {

  for_each = toset(["qa-server", "dev-server", "prod-server"])
  ami           = var.ami_id
  instance_type = var.instance_type

  tags = {
    Name = each.key
  }

}




