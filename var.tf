variable "vpc_id" {
  type = string
  default = "your-vpc-id"
}
 
variable "launch_configuration_name" {
  type = string
  default = "launch_configuration_name"
}
 
variable "auto_scalling_group_name" {
  type = string
  default = "auto_scalling_group_name"
}
 
variable "image_id" {
  type = string
  default =  "image-id-based-on-the-region"
}
 
variable "instance_type" {
  type = "string"
  default = "t2.micro"
}