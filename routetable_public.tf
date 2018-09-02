###
#
# Route Table for Public Subnet
#
resource "aws_route_table" "public" {
  vpc_id = "${aws_vpc.main.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.igw.id}"
  }

  tags {
    Name = "${var.tag_name}-public"
  }
}

# route tableのサブネットへの紐付け
resource "aws_route_table_association" "public_1a_subnet_connector" {
  subnet_id      = "${aws_subnet.public-1a.id}"
  route_table_id = "${aws_route_table.public.id}"
}