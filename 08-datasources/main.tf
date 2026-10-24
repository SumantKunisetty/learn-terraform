data "aws_ami" "ami"{

    filter{
        name = "name"
        values = ["Redhat-9-DevOps-Practice"]
    }

}

data "aws_security_group" "selected"{

    filter{
        name = "group-name"
        values = ["allow-all"]
    }
}

output "X"{
    value= data.aws_ami.ami
}

output "Y" {
  value = data.aws_security_group.selected
}