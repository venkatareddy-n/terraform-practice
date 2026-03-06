resource "aws_instance" "terraform_server" {
  
  count = 3
  ami                    = var.ami_id
  instance_type          = var.instance_type
     
     tags = {      
        Name = MyInstance-${count.index}
     }
        
}




