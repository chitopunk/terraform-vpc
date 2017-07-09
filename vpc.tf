resource "aws_vpc" "virginia" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_internet_gateway" "internet-gw-virginia" {
  vpc_id = "${aws_vpc.virginia.id}"
}

