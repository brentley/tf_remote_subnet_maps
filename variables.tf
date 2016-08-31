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
    brent           = "10.0.0.0/16"
    ecs-services    = "10.1.0.0/16"
    loadtest        = "10.9.0.0/16"
    cphalo          = "10.10.0.0/16"
    devops          = "10.11.0.0/16"
    certmaster      = "10.30.0.0/16"
    akeller         = "10.50.0.0/16"
    zvickery        = "10.51.0.0/16"
    skapadia        = "10.52.0.0/16"
    thor            = "10.53.0.0/16"
    badams          = "10.54.0.0/16"
    alim            = "10.55.0.0/16"
    ehoffmann       = "10.56.0.0/16"
    apurvasingh     = "10.57.0.0/16"
    jcollier        = "10.58.0.0/16"
    wfrancis        = "10.59.0.0/16"
  }
}
