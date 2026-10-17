variable "env"{
    type= string
    default = "abc"
}

variable "number_of_instances"{
    type=number
    default=20
}

variable "enabled" {
    type=bool
    default= true
}

variable "availability_zones" {
    type = list
    default = ["us-east-1a", "us-east-1b"]
}

output "x1" {
    value= var.env
}

output "x2" {
    value = " The number of instances are ${var.number_of_instances}"
}

output "x3" {
    value = "system is ${var.enabled}"
}

output "x4" {
  value = "we will create in ${var.availability_zones[1]}"
}