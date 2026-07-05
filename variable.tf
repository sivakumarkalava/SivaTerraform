
variable "iname" {
  description = "this is the instance name"
  type        = string
}
variable "ami_id" {
  description = "we are usng amazon linux"
  type        = string
}
variable "itype" {
  type = string
}
variable "key" {
  type = string
}
variable "volume" {
  type = number
}
variable "az" {
  type = string
}
