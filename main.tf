
resource "aws_ebs_volume" "mod_virtual_machine_ebs" {
  availability_zone = var.mod_virtual_machine_ebs_availability_zone

  size = var.mod_machine_ebs_size
  tags = {
    Name = join("", [var.stack_prefix, var.ebs_name, "vm"])
    Environment = var.stack_environment
    Role = join("", [var.stack_prefix, "virtual_machine"])
    Cost_Center = var.stack_cost_center
  }
}