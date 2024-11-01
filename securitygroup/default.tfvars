#Public security group
public_Security_Group_ingress = [{
  from_port  = 80
  to_port    = 80
  protocol   = "tcp"
  cidr_block = ["0.0.0.0/0"]
  tags = {
    "name" = "http port"
  }
  },
  {
    from_port  = 22
    to_port    = 22
    cidr_block = ["0.0.0.0/0"]
    protocol   = "tcp"
    tags = {
      "name" = "ssh port"
    }
}]

public_Security_Group_egress = [
  {
    from_port  = 0
    to_port    = 0
    protocol   = "-1"
    cidr_block = ["0.0.0.0/0"]
    tags = {
      "name" = "egress"
    }
  }
]

#Private security group
private_Security_Group_ingress = [{
  from_port  = 8000
  to_port    = 8000
  protocol   = "tcp"
  cidr_block = ["0.0.0.0/0"]
  tags = {
    "name" = "http 8000"
  }
  },
  {
    from_port  = 3306
    to_port    = 3306
    protocol   = "tcp"
    cidr_block = ["0.0.0.0/0"]
    tags = {
      "name" = "http 3306"
    }
}]

private_Security_Group_egress = [
  {
    from_port  = 0
    to_port    = 0
    protocol   = "-1"
    cidr_block = ["0.0.0.0/0"]
    tags = {
      "name" = "egress"
    }
  }
]