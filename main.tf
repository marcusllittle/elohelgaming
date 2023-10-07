provider "aws" {
  region = var.region
}

locals {
  ssh_public_key = file("${path.module}/id_rsa.pub")
}

resource "aws_instance" "gaming_instance" {
  ami               = var.custom_ami != "" ? var.custom_ami : data.aws_ami.windows.id
  instance_type     = var.instance_type
  key_name          = aws_key_pair.deployer.key_name
  subnet_id         = aws_subnet.main.id
  availability_zone = var.allowed_availability_zone_identifier[0]

  root_block_device {
    volume_size = var.root_block_device_size_gb
  }

  tags = {
    Name = var.resource_name
  }

  user_data = <<-EOF
              #include
              https://raw.githubusercontent.com/your-user-data-script-location
              EOF
}

resource "aws_key_pair" "deployer" {
  key_name   = "deployer-key"
  public_key = local.ssh_public_key
}

resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_subnet" "main" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.1.0/24"
}

data "aws_ami" "windows" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["Windows_Server-2019-English-Full-Base-*"]
  }
}
