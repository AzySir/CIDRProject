variable "projecttag" {
  type = string
}

variable "vpc_cidr" {
  type = string
}

variable "public_cidr" {
  type = list(string)
}

variable "private_cidr" {
  type = list(string)
}

variable "data_cidr" {
  type = list(string)
}

variable "az" {
  type = list(string)
}


