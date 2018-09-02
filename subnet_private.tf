###
#
# Private Subnet
#
# Availability Zone 1a
resource "aws_subnet" "private-1a" {
  vpc_id            = "${aws_vpc.main.id}"
  cidr_block        = "${var.private_subnet_1a_cidr}"
  availability_zone = "us-east-1a"

  tags {
    Name = "${var.tag_name}-private-1a"
  }
}

# Availability Zone 1c
resource "aws_subnet" "private-1c" {
  vpc_id            = "${aws_vpc.main.id}"
  cidr_block        = "${var.private_subnet_1c_cidr}"
  availability_zone = "us-east-1c"

  tags {
    Name = "${var.tag_name}-private-1c"
  }
}
