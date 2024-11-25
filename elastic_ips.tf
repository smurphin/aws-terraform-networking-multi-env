#Allocate Elastic IPs for the Nat Gateways to use
resource "aws_eip" "nat_az_a" {
  vpc = true
}

resource "aws_eip" "nat_az_b" {
  vpc = true
}

