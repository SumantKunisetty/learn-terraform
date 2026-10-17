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

output "x1" {
    value= var.env
}

output "x2" {
    value = " The number of instances are ${var.number_of_instances}"
}

output "x3" {
    value = "system is ${var.enabled}"
}