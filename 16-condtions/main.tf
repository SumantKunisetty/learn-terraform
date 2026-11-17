resource "aws_instance" "name" {
    ami = "ami-0055977a6e828a4f4"
    instance_type = var.env == "prod" ? "t3.micro" : "t3.small"
}

variable "env" {
    default = "prod"
}