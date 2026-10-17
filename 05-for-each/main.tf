resource "null_resource" "test"{
    for_each = var.inputs
}

variable "inputs"{
    default = {
        a=1
        b=2
        c=3
    }
}