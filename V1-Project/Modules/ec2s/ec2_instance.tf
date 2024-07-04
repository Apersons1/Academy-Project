# #
# #EC2 instances are made here
# resource "aws_instance" "web_server" {
#     # Get this from when you launch an instance
#     ami = "ami-05d929ac8893c382f"

#     # Machine type
#     instance_type = var.instance_size

#     # Security Groups, What Gateways are open
#     vpc_security_group_ids = ["aws_security_group.webserver_security_group.id"]

#     # Number of instances
#     count = 2

#     # This is the name of the instance
#     tags = {
#         Name = "temp"
#     }

# }

# module "tf_security_group"{
#     source = "../security_groups"
# }