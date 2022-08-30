resource "aws_key_pair" "main" {
  public_key = file("${path.module}/keys/gatn.pem.pub")
  key_name   = var.project_name
  tags = {
    type = "rsa"
  }
}
