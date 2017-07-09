resource "aws_subnet" "virginia-public-1c" {
  vpc_id     = "${aws_vpc.virginia.id}"
  cidr_block = "10.0.2.0/24"
  availability_zone = "us-east-1c" 

  tags {
    Name = "subnet-public-virginia-us-east-1c"
  }
}

resource "aws_subnet" "virginia-1c" {
  vpc_id     = "${aws_vpc.virginia.id}"
  cidr_block = "10.0.48.0/20"
  availability_zone = "us-east-1c" 

  tags {
    Name = "subnet-virginia-us-east-1c"
  }
}

resource "aws_eip" "eip-1c" {}   

resource "aws_nat_gateway" "nat-1c" {
  allocation_id = "${aws_eip.eip-1c.id}"
  subnet_id     = "${aws_subnet.virginia-public-1c.id}"
  depends_on = ["aws_internet_gateway.internet-gw-virginia"]
}
