resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0" # Replace with your desired AMI
  instance_type = "t2.micro"
  key_name      = "my-key-pair" # Replace with your key pair name

  tags = {
    Name = var.instance_name
  }
}

resource "aws_security_group" "example" {
  name        = "my-security-group"
  description = "Allow SSH and HTTP traffic"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress   
 {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_s3_bucket"   
 "example" {
  bucket = "my-s3-bucket"
}
