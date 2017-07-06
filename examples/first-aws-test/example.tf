provider "aws" {
  access_key = "AKIAJVNVJSZ4KOKAWAHA"
  secret_key = "T7aNGiKl0X/HDuZmpob1J5PFt48TaDHTLTzlNZWW"
  region     = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-b374d5a5"
  instance_type = "t2.micro"
}

resource "aws_eip" "ip" {
  instance = "${aws_instance.example.id}"
}
