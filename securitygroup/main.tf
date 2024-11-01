#Adding public security groups and its rule

resource "aws_security_group" "public" {
  name        = "public_security_group"
  description = "Security group for public access"
  vpc_id      = aws_vpc.vpc_info.id
}

resource "aws_security_group" "private" {
  name        = "private_security_group"
  description = "Security group for private access"
  vpc_id      = aws_vpc.vpc_info.id
}

resource "aws_security_group_rule" "public_Security_Group_ingress" {
  security_group_id = aws_security_group.public.id
  count             = length(var.public_Security_Group_ingress)
  from_port         = var.public_Security_Group_ingress[count.index].from_port
  to_port           = var.public_Security_Group_ingress[count.index].to_port
  type              = "ingress"
  protocol          = var.public_Security_Group_ingress[count.index].protocol
  cidr_blocks       = var.public_Security_Group_ingress[count.index].cidr_block
  depends_on        = [aws_security_group.public]

}

resource "aws_security_group_rule" "public_Security_Group_egress" {
  security_group_id = aws_security_group.public.id
  count             = length(var.public_Security_Group_egress)
  from_port         = var.public_Security_Group_egress[count.index].from_port
  to_port           = var.public_Security_Group_egress[count.index].to_port
  type              = "egress"
  protocol          = var.public_Security_Group_egress[count.index].protocol
  cidr_blocks       = var.public_Security_Group_egress[count.index].cidr_block
  depends_on        = [aws_security_group.public]

}

resource "aws_security_group_rule" "private_Security_Group_ingress" {
  security_group_id = aws_security_group.private.id
  count             = length(var.private_Security_Group_ingress)
  from_port         = var.private_Security_Group_ingress[count.index].from_port
  to_port           = var.private_Security_Group_ingress[count.index].to_port
  type              = "ingress"
  protocol          = var.private_Security_Group_ingress[count.index].protocol
  cidr_blocks       = var.private_Security_Group_ingress[count.index].cidr_block
  depends_on        = [aws_security_group.private]

}

resource "aws_security_group_rule" "private_Security_Group_egress" {
  security_group_id = aws_security_group.private.id
  count             = length(var.private_Security_Group_egress)
  from_port         = var.private_Security_Group_egress[count.index].from_port
  to_port           = var.private_Security_Group_egress[count.index].to_port
  type              = "ingress"
  protocol          = var.private_Security_Group_egress[count.index].protocol
  cidr_blocks       = var.private_Security_Group_egress[count.index].cidr_block
  depends_on        = [aws_security_group.private]

}