resource "aws_internet_gateway" "main" {
  vpc_id = var.vpc_id
  tags   = { Name = var.name }

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_eip" "main" {
  count      = var.azs_count
  domain     = "vpc"
  depends_on = [aws_internet_gateway.main]
  tags       = { Name = "demo-eip-${var.azs_names[count.index]}" }
}
