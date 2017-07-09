resource "aws_subnet" "virginia-public-1a" {
  vpc_id     = "${aws_vpc.virginia.id}"
  cidr_block = "10.0.0.0/24"
  availability_zone = "us-east-1a"

  tags {
    Name = "subnet-public-virginia-us-east-1a"
  }
}

resource "aws_subnet" "virginia-1a" {
  vpc_id     = "${aws_vpc.virginia.id}"
  cidr_block = "10.0.16.0/20"
  availability_zone = "us-east-1a" 

  tags {
    Name = "subnet-virginia-us-east-1a"
  }
}

resource "aws_eip" "eip-1a" {}   

resource "aws_nat_gateway" "nat-1a" {
  allocation_id = "${aws_eip.eip-1a.id}"
  subnet_id     = "${aws_subnet.virginia-public-1a.id}"
  depends_on = ["aws_internet_gateway.internet-gw-virginia"]
}
