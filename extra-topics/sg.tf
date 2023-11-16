# # __generated__ by Terraform
# # Please review these resources and move them into your main configuration files.

# # __generated__ by Terraform from "sg-03042dfd03837b845"
# resource "aws_security_group" "web-sg" {
#   description = "manually crteated"
#   egress = [{
#     cidr_blocks      = ["0.0.0.0/0"]
#     description      = ""
#     from_port        = 0
#     ipv6_cidr_blocks = []
#     prefix_list_ids  = []
#     protocol         = "-1"
#     security_groups  = []
#     self             = false
#     to_port          = 0
#   }]
#   ingress = [{
#     cidr_blocks      = ["0.0.0.0/0"]
#     description      = ""
#     from_port        = 80
#     ipv6_cidr_blocks = []
#     prefix_list_ids  = []
#     protocol         = "tcp"
#     security_groups  = []
#     self             = false
#     to_port          = 80
#     }, {
#     cidr_blocks      = ["70.187.6.116/32"]
#     description      = ""
#     from_port        = 22
#     ipv6_cidr_blocks = []
#     prefix_list_ids  = []
#     protocol         = "tcp"
#     security_groups  = []
#     self             = false
#     to_port          = 22
#   }]
#   name                   = "security-group-to-import-"
#   name_prefix            = null
#   revoke_rules_on_delete = null
#   tags                   = {}
#   tags_all               = {}
#   vpc_id                 = "vpc-0801ea8dadf5fda28"
# }
