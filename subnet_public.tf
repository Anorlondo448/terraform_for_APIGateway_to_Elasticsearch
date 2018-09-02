###
#
# Public Subnet
#
resource "aws_subnet" "public-1a" {
  vpc_id            = "${aws_vpc.main.id}"
  cidr_block        = "${var.public_subnet_1a_cidr}"
  availability_zone = "us-east-1a"

  tags {
    Name = "${var.tag_name}-public-1a"
  }
}
