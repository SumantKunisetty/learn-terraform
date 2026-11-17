variable "input" {
    default = {
        one = "100"
        two = "200"
        three = "300"
    }
}

locals {
  input_list = [for i,j in var.input: j]
}
output "out" {
  #moved as locals value = [for i,j in var.input: j]
  value = input_list
}