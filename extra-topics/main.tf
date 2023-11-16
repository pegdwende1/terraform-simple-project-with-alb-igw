# import {
#   to = aws_security_group.web-sg
#   id = "sg-03042dfd03837b845"
# }


# resource "aws_instance" "app" {
#   ami           = "ami-06e4ca05d431835e9"
#   instance_type = "t2.micro"
  
#   for_each = toset(["ec21" , "ec2b" , "ec2_3"])
#   tags = {
#     Name = "App-server"
#   }
# }

# output "instance_id" {
#     value = aws_instance.app[*].id
  
# }
# output "arns" {
#   value = aws_instance.app[*].arn
# }


# resource "aws_iam_user" "the-accounts" {
#   for_each = toset( ["Todd", "James", "Alice", "Dottie" , "Todd"] )
#   name     = each.key
# }




# resource "aws_security_group" "demo_sg" {
#   name        = "sample-sg"

#  ingress {
#     from_port   = 8200
#     to_port     = 8200
#     protocol    = "tcp"
#     cidr_blocks = ["0.0.0.0/0"]
#   }

#   ingress {
#     from_port   = 8201
#     to_port     = 8201
#     protocol    = "tcp"
#     cidr_blocks = ["0.0.0.0/0"]
#   }

#   ingress {
#     from_port   = 8300
#     to_port     = 8300
#     protocol    = "tcp"
#     cidr_blocks = ["0.0.0.0/0"]
#   }

#   ingress {
#     from_port   = 9200
#     to_port     = 9200
#     protocol    = "tcp"
#     cidr_blocks = ["0.0.0.0/0"]
#   }

#   ingress {
#     from_port   = 9500
#     to_port     = 9500
#     protocol    = "tcp"
#     cidr_blocks = ["0.0.0.0/0"]
#   }
# }



# resource "aws_security_group" "demo_sg" {
#   name        = "sample-sg-provisioner"

#   ingress {
#     from_port   = 80
#     to_port     = 80
#     protocol    = "tcp"
#     cidr_blocks = ["0.0.0.0/0"]
#   }

#     ingress {
#     from_port   = 22
#     to_port     = 22
#     protocol    = "tcp"
#     cidr_blocks = ["0.0.0.0/0"]
#   }

# }

# resource "aws_instance" "test" {
#   ami = "ami-06e4ca05d431835e9"
#   instance_type = "t2.micro"
#   tags = {
#     Name="remote-exec-ec2"
#   }
#   key_name = "remote_kp"
#   vpc_security_group_ids = [aws_security_group.demo_sg.id]

#   connection {
#     type ="ssh"
#     user = "ec2-user"
#     private_key = file("./remote_kp.pem")
#     host = self.public_ip
#   }


# provisioner "remote-exec" {
#   inline = [
#     "sudo touch /home/ec2-user/movies"    
#   ]
# }
# }



resource "aws_instance" "test" {
  ami = "ami-06e4ca05d431835e9"
  instance_type = "t2.micro"
  tags = {
    Name="us-west-1-server"
  }
}

resource "aws_instance" "web" {
  ami = "ami-093467ec28ae4fe03"
  instance_type = "t2.micro"
  tags = {
    Name="us-west-2-server"
  }
  provider = aws.west
}