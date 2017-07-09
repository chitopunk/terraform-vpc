resource "aws_route_table_association" "private-route-1a" {
  subnet_id      = "${aws_subnet.private-virginia-1a.id}"
  route_table_id = "${aws_route_table.private-route-1a.id}"
  depends_on = ["aws_route_table_association.private-route-1a", "aws_subnet.private-virginia-1a" ]
}

resource "aws_route_table_association" "public-route-1a" {
  subnet_id      = "${aws_subnet.public-virginia-1a.id}"
  route_table_id = "${aws_route_table.public-route-1a.id}"
  depends_on = ["aws_route_table_association.public-route-1a", "aws_subnet.public-virginia-1a" ]
}

resource "aws_route_table_association" "private-route-1b" {
  subnet_id      = "${aws_subnet.private-virginia-1b.id}"
  route_table_id = "${aws_route_table.private-route-1b.id}"
  depends_on = ["aws_route_table_association.private-route-1b", "aws_subnet.private-virginia-1b" ]
}

resource "aws_route_table_association" "public-route-1b" {
  subnet_id      = "${aws_subnet.public-virginia-1b.id}"
  route_table_id = "${aws_route_table.public-route-1b.id}"
  depends_on = ["aws_route_table_association.public-route-1b", "aws_subnet.public-virginia-1b" ]
}

resource "aws_route_table_association" "private-route-1c" {
  subnet_id      = "${aws_subnet.private-virginia-1c.id}"
  route_table_id = "${aws_route_table.private-route-1c.id}"
  depends_on = ["aws_route_table_association.private-route-1c", "aws_subnet.private-virginia-1c" ]
}

resource "aws_route_table_association" "public-route-1c" {
  subnet_id      = "${aws_subnet.public-virginia-1c.id}"
  route_table_id = "${aws_route_table.public-route-1c.id}"
  depends_on = ["aws_route_table_association.public-route-1c", "aws_subnet.public-virginia-1c" ]
}
