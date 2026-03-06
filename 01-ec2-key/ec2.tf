resource "aws_instance" "terraform_server" {
  ami                    = "ami-0ad50334604831820"
  instance_type          = "t2.micro"
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]

  key_name      = aws_key_pair.my_key_pair.key_name

  tags = {
    Name = "01-ec2"
  }
}

resource "aws_key_pair" "my_key_pair" {
  key_name   = "venkat-key"
  # Replace your ~/.ssh/venkat.pub key content below
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC9nw+W89MoPCuIXfeMYboxR+3ltb3spwXZiNRhWcP5KkZ5h5pBJRJdO+jL/ySV37ZcqzyYixbUzs/TvHOYsnj1MIew41JkZ0oqZYlbcy8rh74/ON2+r4YLMHA2Wd1CQ0lGifVwhYfjLRxwbL2z++1+obr1vUD2Wg3RuvMb9LRk70oiYVkt4Np4gvFhJTQVCKP9W7dv1dLCkP8sP8QfjM8i2/XwxhvGB52ur212Y6BKbue30xxfVmmRhEQH2qpMsIyIRGdEJ+0c/cTqbpvS4G+qNypNP/z0C+YXA6LLWVytV3aBUbe1Jde/9wqwuRsOizXyNg76CjjVgRPdtWHEstPys/lrGHNZa2+T051N+2CS2+QhzrqmTVViz2HKUE/BUKe703gbmgtQS5lyWQuvTaGWCxTxLYMwO8mHi4yk3afuwI4fguB4UGv6jEVjMFZ/jqUflAzczY6UmfZKMEq19AMja9L0H83UmGbODfpMKfiN6vM0BIeTdVdyEk4n3aFN30k= VENKATA REDDY@VENKAT"
}


resource "aws_security_group" "allow_ssh" {
  name = "allow-ssh"

  ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "Allow-SSH"
  }

}
