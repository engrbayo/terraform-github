# Default VPC
resource "aws_default_vpc" "default" {

}

# Security group
resource "aws_security_group" "demo_sg_terraform" {
  name        = "demo_sg_terraform"
  description = "allow ssh on 22 & http on port 80"
  vpc_id      = aws_default_vpc.default.id

  ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  ingress {
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "aws_ubuntu" {
  instance_type          = "t2.micro"
  ami                    = data.aws_ami.ubuntu.id
  user_data              = file("userdata.tpl")
  vpc_security_group_ids = ["${aws_security_group.demo_sg_terraform.id}"]
  key_name               = "EC2Instance"

    tags = {
    Name = "New_Git_EC2"
  }

}