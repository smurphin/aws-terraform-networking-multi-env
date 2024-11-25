# Creating an Internet Gateway and attaching it to the VPC
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.vpc_1.id
}

# Creating NAT Gateways
resource "aws_nat_gateway" "nat_gw_az_a" {
  subnet_id     = aws_subnet.public_1.id
  allocation_id = aws_eip.nat_az_a.id
}

resource "aws_nat_gateway" "nat_gw_az_b" {
  subnet_id     = aws_subnet.public_2.id
  allocation_id = aws_eip.nat_az_b.id
}

