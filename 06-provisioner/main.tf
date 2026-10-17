resource "aws_instance" "test"{
    ami = "ami-0220d79f3f480ecf5"
    instance_type = "t3.micro"
    vpc_security_group_ids = ["sg-04dce564af1818b33"]
    tags = {
        Name = "test"
    }
    provisioner "remote-exec" {
        when = create
        connection {
            type = "ssh"
            host = self.public_ip
            user = "ec2-user"
            password = "DevOps321"
        } 
        inline = [ 
            "echo Hi Sumant and Usha, Wish you a great future > /tmp/sample.txt"
        ]
    }
}