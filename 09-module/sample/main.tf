variable "message" {}
variable "a"{}
variable "b"{}

resource "null_resource" "test"{
    provisioner "local-exec" {
      command = "echo ${var.message}"
    }
}

output "test"{
    value = var.message
}

output "multiply"{
    value = var.a * var.b
}