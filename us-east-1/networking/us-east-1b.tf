resource "aws_subnet" "virginia-public-1b" {
  vpc_id     = "${aws_vpc.virginia.id}"
  cidr_block = "10.0.1.0/24"
  availability_zone = "us-east-1b"

  tags {
    Name = "subnet-public-virginia-us-east-1b"
  }
}

resource "aws_subnet" "virginia-1b" {
  vpc_id     = "${aws_vpc.virginia.id}"
  cidr_block = "10.0.32.0/20"
  availability_zone = "us-east-1b" 

  tags {
    Name = "subnet-virginia-us-east-1b"
  }
}

resource "aws_eip" "eip-1b" {}   

resource "aws_nat_gateway" "nat-1b" {
  allocation_id = "${aws_eip.eip-1b.id}"
  subnet_id     = "${aws_subnet.virginia-public-1b.id}"
  depends_on = ["aws_internet_gateway.internet-gw-virginia"]
}
