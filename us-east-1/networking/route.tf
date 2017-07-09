resource "aws_route_table" "private-route-1a" {
  vpc_id = "${aws_vpc.virginia.id}"
  
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_nat_gateway.nat-1a.id}"
  }

  tags {
    Name = "main-private-1a"
  }
}

resource "aws_route_table" "public-route-1a" {
  vpc_id = "${aws_vpc.virginia.id}"
  
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.internet-gw-virginia.id}"
  }

  tags {
    Name = "main-public-1a"
  }
}

resource "aws_route_table" "private-route-1b" {
  vpc_id = "${aws_vpc.virginia.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_nat_gateway.nat-1b.id}"

  }

  tags {
    Name = "main-private-1b"
  }
}

resource "aws_route_table" "public-route-1b" {
  vpc_id = "${aws_vpc.virginia.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.internet-gw-virginia.id}"
  }

  tags {
    Name = "main-public-1b"
  }
}

resource "aws_route_table" "private-route-1c" {
  vpc_id = "${aws_vpc.virginia.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_nat_gateway.nat-1c.id}"
  }

  tags {
    Name = "main-private-1c"
  }
}

resource "aws_route_table" "public-route-1c" {
  vpc_id = "${aws_vpc.virginia.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.internet-gw-virginia.id}"
  }

  tags {
    Name = "main-public-1c"
  }
}
