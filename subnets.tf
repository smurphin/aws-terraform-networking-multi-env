# Creating public subnets
resource "aws_subnet" "public_1" {
  vpc_id     = aws_vpc.vpc_1.id
  cidr_block = var.public_subnet_1
  availability_zone = "${var.region}${var.az_1}"
}

resource "aws_subnet" "public_2" {
  vpc_id     = aws_vpc.vpc_1.id
  cidr_block = var.public_subnet_2
  availability_zone = "${var.region}${var.az_2}"
}

# Creating private subnets
resource "aws_subnet" "private_1" {
  vpc_id     = aws_vpc.vpc_1.id
  cidr_block = var.private_subnet_1
  availability_zone = "${var.region}${var.az_1}"
}

resource "aws_subnet" "private_2" {
  vpc_id     = aws_vpc.vpc_1.id
  cidr_block = var.private_subnet_2
  availability_zone = "${var.region}${var.az_2}"
}


