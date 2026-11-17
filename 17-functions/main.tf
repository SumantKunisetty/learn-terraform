variable "some" {
    default = "Hello world"
}

output "X" {
    value = upper(var.some)
}