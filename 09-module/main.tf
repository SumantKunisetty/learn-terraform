module "test"{
    source = "./sample"
    message = var.message
    a = var.first
    b = var.second
}
output "output_from_module" {
  value = module.test.multiply
}