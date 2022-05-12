data "aws_subnet_ids" "subnets" {
  vpc_id = var.vpc_id
}
 
data "aws_subnet" "subnet_values" {
  for_each = data.aws_subnet_ids.subnets.ids
  id       = each.value
}
 
resource"aws_launch_configuration" "launch-configuration" {
  name = var.launch_configuration_name
  image_id = var.image_id
  instance_type = var.instance_type
}
 
resource "aws_autoscaling_group" "autoscalling_group_config" {
  name = var.auto_scalling_group_name
  max_size = 3
  min_size = 2
  health_check_grace_period = 300
  health_check_type = "EC2"
  desired_capacity = 3
  force_delete = true
  vpc_zone_identifier = [for s in data.aws_subnet.subnet_values: s.id]
 
  launch_configuration = aws_launch_configuration.launch-configuration.name
 
  lifecycle {
    create_before_destroy = true
  }
}