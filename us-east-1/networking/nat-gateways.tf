resource "aws_nat_gateway" "nat-1a" {
  allocation_id = "${aws_eip.eip-1a.id}"
  subnet_id     = "${aws_subnet.public-virginia-1a.id}"
  depends_on = ["aws_internet_gateway.internet-gw-virginia"]
}

resource "aws_nat_gateway" "nat-1b" {
  allocation_id = "${aws_eip.eip-1b.id}"
  subnet_id     = "${aws_subnet.public-virginia-1b.id}"
  depends_on = ["aws_internet_gateway.internet-gw-virginia"]
}

resource "aws_nat_gateway" "nat-1c" {
  allocation_id = "${aws_eip.eip-1c.id}"
  subnet_id     = "${aws_subnet.public-virginia-1c.id}"
  depends_on = ["aws_internet_gateway.internet-gw-virginia"]
}
