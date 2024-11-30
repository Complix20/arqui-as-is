variable "name" {}
variable "cpu" {}
variable "ram" {}
variable "storage" {
  type = object({
    type = string
    size = number
  })
}
variable "os" {}
variable "db_type" {
  default = null
}
