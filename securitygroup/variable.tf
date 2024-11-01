#Security group
variable "public_Security_Group_ingress" {
  type = list(object({
    from_port  = number
    to_port    = number
    protocol   = string
    cidr_block = list(string)
    tags       = map(string)
  }))
  description = "This defines public security group ingress rules"
}
variable "public_Security_Group_egress" {
  type = list(object({
    from_port  = number
    to_port    = number
    protocol   = string
    cidr_block = list(string)
    tags       = map(string)
  }))
  description = "This defines public security group egress rules"
}

#Security group
variable "private_Security_Group_ingress" {
  type = list(object({
    from_port  = number
    to_port    = number
    protocol   = string
    cidr_block = list(string)
    tags       = map(string)
  }))
  description = "This defines private security group ingress rules"
}
variable "private_Security_Group_egress" {
  type = list(object({
    from_port  = number
    to_port    = number
    protocol   = string
    cidr_block = list(string)
    tags       = map(string)
  }))
  description = "This defines private security group egress rules"
}