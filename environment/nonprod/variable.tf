variable "application" {
  type = string
}

variable "primary_location" {
  type = string
}

variable "secondary_location" {
  type = string
}

variable "tags" {
  type    = map(string)
  default = {}
}