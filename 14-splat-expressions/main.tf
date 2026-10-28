resource "aws_instance" "main" {
  for_each = var.servers
  ami = "ami-0055977a6e828a4f4"
  instance_type = "t3.micro"
  tags = {
    Name = each.key
  }
}

variable "servers" {
  default = {
    one = ""
    two = ""
    three = ""
  }
}

output "server_list" {
  value= [for o in aws_instance.main : o.id]
}

output "server_list_custom" {
    value = {for i,j in aws_instance.main : i => j.id}
}