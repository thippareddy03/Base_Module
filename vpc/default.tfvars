#VPC Details
vpc_info = {
  name               = "My_VPC"
  cidr_block         = "172.31.0.0/16"
  enable_dns_support = false
  tags = {
    Env = "UAT"
  }

}
#Public subnet details
Public_Subnets = [
  {
    name              = "web-1"
    cidr_block        = "172.31.64.0/20"
    availability_Zone = "us-east-1a"
    tags = {
      "Env" = "UAT"
    }
  },
  {
    name              = "web-2"
    cidr_block        = "172.31.32.0/20"
    availability_Zone = "us-east-1b"
    tags = {
      "Env" = "UAT"
    }
  }
]

#Private subnet details
Private_Subnets = [{
  name              = "App-1"
  cidr_block        = "172.31.0.0/20"
  availability_Zone = "us-east-1d"
  tags = {
    "Env" = "UAT"
  }
  },
  {
    name              = "db-1"
    cidr_block        = "172.31.80.0/20"
    availability_Zone = "us-east-1c"
    tags = {
      "Env" = "UAT"
    }
  }
]

# Internet gateway
IG = {
  name = "Internet Gateway"
  tags = {
    "Env" = "UAT"
  }
}
# Public route
Public_Route = {
  name = "Public"
  tags = {
    "Env" = "UAT"
  }
}
# Private route
Private_Route = {
  name = "Private"
  tags = {
    "Env" = "UAT"
  }
}