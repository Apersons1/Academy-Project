# -----CIDR-----
# Controll trafic in security group by assiging IP addresses which can pass through
# ------------------
resource "aws_security_group" "webserver_security_group" {

  name = "allow web trafic"

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = [var.all_ip_cidr]
  }

  dynamic "ingress"{
    for_each = var.port_list
    content{
      from_port   = ingress.value
      to_port     = ingress.value
      protocol    = "tcp"
      cidr_blocks = [var.all_ip_cidr]

    }
 }

}