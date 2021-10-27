# 가용영역 a의 Public Subnet
resource "aws_subnet" "kmj_puba" {
  vpc_id            = aws_vpc.kmj_vpc.id
  cidr_block        = "10.0.0.0/24"
  availability_zone =   "ap-northeast-2a"

  tags = {
    Name = "kmj-puba"
  }
}

# 가용영역 a의 Private Subnet
resource "aws_subnet" "kmj_pria" {
  vpc_id            = aws_vpc.kmj_vpc.id
  cidr_block        = "10.0.1.0/24"
  availability_zone =   "ap-northeast-2a"
  tags = {
    Name = "kmj-pria"
  }
}

# 가용영역 c의 Public Subnet
resource "aws_subnet" "kmj_pubc" {
  vpc_id            = aws_vpc.kmj_vpc.id
  cidr_block        = "10.0.2.0/24"
  availability_zone =  "ap-northeast-2c"
  tags = {
    Name = "kmj-pubc"
  }
}

# 가용영역 c의 Private Subnet
resource "aws_subnet" "kmj_pric" {
  vpc_id            = aws_vpc.kmj_vpc.id
  cidr_block        = "10.0.3.0/24"
  availability_zone = "ap-northeast-2c"

  tags = {
    Name = "kmj-pric"
  }
}
