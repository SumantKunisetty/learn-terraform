resource "aws_instance" "instnace" {
    ami = "ami-0220d79f3f480ecf5"
    instance_type = "t3.micro"
    vpc_security_group_ids = ["sg-04dce564af1818b33"]
    tags = {
        Name = "test"
    }
}

resource "null_resource" "test" {
    provisioner "remote-exec" {
        connection {
          type = "ssh"
          host = aws_instance.instnace.public_ip
          user = "ec2-user"
          password = "DevOps321"
        }
        inline = [
            "echo Hello > /tmp/sample.txt"
        ]
      
    }
  
}