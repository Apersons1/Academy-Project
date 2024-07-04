# ------------Security groups-------------
# for (IP page)
variable "all_ip_cidr" {
  default = "0.0.0.0/0"
}

variable "port_list"{
  type = list(number)
  description = "list of port ingress values"
  default = [22,443,80]
}