resource "aws_nat_gateway" "regional" {
  vpc_id            = aws_vpc.main.id
  availability_mode = "regional"
  connectivity_type = "public"

  tags = {
    Name = "nat-regional"
  }

  depends_on = [aws_internet_gateway.main]
}
