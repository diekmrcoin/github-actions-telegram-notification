resource "aws_instance" "main" {
  ami           = "ami-0eb375f24fdf647b8" # eu-west-3 ami-0eb375f24fdf647b8
  instance_type = "t3a.micro"             # vCPU(2) RAM(1GiB) $0,0094/h
  subnet_id     = aws_subnet.subnet_a.id
  key_name      = aws_key_pair.main.key_name
  user_data     = file("${path.module}/user-data/main.sh")
  security_groups = [
    aws_default_security_group.default.id
  ]
  ebs_block_device {
    device_name           = "/dev/xvda"
    volume_size           = 12
    volume_type           = "gp2"
    delete_on_termination = true
    tags = {
      host    = "ec2"
      machine = "main"
    }
  }
  lifecycle {
    ignore_changes = [
      security_groups,
      network_interface,
      disable_api_termination,
      ebs_optimized,
      hibernation,
      credit_specification,
      ephemeral_block_device
    ]
  }
}
