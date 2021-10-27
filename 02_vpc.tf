resource "aws_vpc" "kmj_vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
      Name   =  "kmj_vpc"  
  }
}
