resource "aws_instance" "terraform_server" {

  for_each      = var.instance_names
  ami           = var.ami_id
  instance_type = each.value

  tags = {
    Name = each.key
  }

}




