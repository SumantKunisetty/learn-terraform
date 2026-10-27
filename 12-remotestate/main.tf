terraform {
  backend "s3" {
    bucket = "terraform-s3-demo-sumant"
    key = "demostate/terraform.state"
    region = "us-east-1"
  }
}

resource "null_resource" "name" {
    provisioner "local-exec" {
      command = "echo Hello world"
    }
}