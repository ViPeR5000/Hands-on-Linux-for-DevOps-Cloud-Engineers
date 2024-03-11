# security group
resource "aws_security_group" "allow_SSH_HTTP" {
  name        = "allow_SSH_HTTP"
  description = "Allow SSH and HTTP inbound traffic"
  vpc_id      = aws_vpc.lab-vpc.id
#outbound
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = -1
    cidr_blocks = ["0.0.0.0/0"]
  }
#inbound

  ingress {
    description = "SSH from VPC"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
#allow ips to access
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "HTTP from VPC"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "SSH and HTTP allowed"
  }
}
