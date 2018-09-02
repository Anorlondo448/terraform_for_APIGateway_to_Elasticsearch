###
#
# Route Table for Private Subnet
#
resource "aws_route_table" "private" {
  vpc_id = "${aws_vpc.main.id}"

  tags {
    Name = "${var.tag_name}-private"
  }
}

# route tableのサブネットへの紐付け
resource "aws_route_table_association" "private_1a_subnet_connector" {
  subnet_id      = "${aws_subnet.private-1a.id}"
  route_table_id = "${aws_route_table.private.id}"
}

resource "aws_route_table_association" "private_1c_subnet_connector" {
  subnet_id      = "${aws_subnet.private-1c.id}"
  route_table_id = "${aws_route_table.private.id}"
}