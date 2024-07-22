variable "vpc_cidr" {
  default = "10.0.0.0/16"
}
variable "private_subnet_cidr" {
  default = "10.0.0.0/24"
}
variable "public_subnet_cidr" {
  default = "10.0.1.0/24"
}
variable "instance_names" {
  default = ["Jenkins", "agent", "mongodb", "catalogue", "web"]
}
