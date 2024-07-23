variable "project_name" {
  default = "expense"
}

variable "environment" {
  default = "dev"
}

variable "sg_name" {
  default = {}
}

# variable "sg_description" {
#   default = "allowing sg for mysql "
# }

variable "common_tags" {
   default = {
    project_name="expense"
    environment="dev"
    terraform= true
    component="backend"
  }
}


variable "zone_name" {
  default = "bigmatrix.in"
}

variable "app_version" {
  default = "bigmatrix.in"
}
