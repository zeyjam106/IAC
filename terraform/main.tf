terraform {
  required_version = "1.0.10"
}

provider "aws" {
    region="us-east-1"

}

resource "aws_instance" "site" {
    ami = "ami-01cc34ab2709337aa"
    instance_type="t2.micro"
    key_name="jam106"
    vpc_security_group_ids = ["sg-0e38108dfe93d7f06"]
        tags = {
            Name = "COOL GUY"
            
        }
}