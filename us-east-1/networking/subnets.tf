resource "aws_subnet" "private-virginia-1a" {
  vpc_id     = "${aws_vpc.virginia.id}"
  cidr_block = "10.0.16.0/20"
  availability_zone = "us-east-1a" 

  tags {
    Name = "subnet-private-virginia-1a"
  }
}

resource "aws_subnet" "public-virginia-1a" {
  vpc_id     = "${aws_vpc.virginia.id}"
  cidr_block = "10.0.0.0/24"
  availability_zone = "us-east-1a"
  map_public_ip_on_launch = true

  tags {
    Name = "subnet-public-virginia-1a"
  }
}

resource "aws_subnet" "private-virginia-1b" {
  vpc_id     = "${aws_vpc.virginia.id}"
  cidr_block = "10.0.32.0/20"
  availability_zone = "us-east-1b" 

  tags {
    Name = "subnet-private-virginia-1b"
  }
}

resource "aws_subnet" "public-virginia-1b" {
  vpc_id     = "${aws_vpc.virginia.id}"
  cidr_block = "10.0.1.0/24"
  availability_zone = "us-east-1b"
  map_public_ip_on_launch = true

  tags {
    Name = "subnet-public-virginia-1b"
  }
}

resource "aws_subnet" "private-virginia-1c" {
  vpc_id     = "${aws_vpc.virginia.id}"
  cidr_block = "10.0.48.0/20"
  availability_zone = "us-east-1c" 

  tags {
    Name = "subnet-private-virginia-1c"
  }
}

resource "aws_subnet" "public-virginia-1c" {
  vpc_id     = "${aws_vpc.virginia.id}"
  cidr_block = "10.0.2.0/24"
  availability_zone = "us-east-1c" 
  map_public_ip_on_launch = true

  tags {
    Name = "subnet-public-virginia-1c"
  }
}

output "private_subnet_ids" {
  value = {
    "us-east-1a" = "${aws_subnet.private-virginia-1a.id}",
    "us-east-1b" = "${aws_subnet.private-virginia-1b.id}",
    "us-east-1c" = "${aws_subnet.private-virginia-1c.id}"
  }
}

output "public_subnet_ids" {
  value = {
    "us-east-1a" = "${aws_subnet.public-virginia-1a.id}",
    "us-east-1b" = "${aws_subnet.public-virginia-1b.id}",
    "us-east-1c" = "${aws_subnet.public-virginia-1c.id}"
  }
}
