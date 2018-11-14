# Create a new instance of the latest Ubuntu 14.04 on an
# t2.micro node with an AWS Tag naming it "HelloWorld"

resource "aws_instance" "ubuntu" {
  ami           = "ami-0ebc281c20e89ba4b"
  instance_type = "t2.micro"

  tags {
    Name = "HelloWorld"
  }
}
