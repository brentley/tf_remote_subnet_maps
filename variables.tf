# grids

variable "global_netspace" {
  default = "10.0.0.0/8"
}

variable "subnet_stack_name" {}

# The convention here is that lower numbers are for "group" grids,
# and higher numbers 50+ are for "user" grids.

variable "subnet_assignments" {
  description = "subnet assignments by grid"
  type = "map"
  default = {
    dev             = "10.0.0.0/16"
    ecs-services    = "10.1.0.0/16"
  }
}
