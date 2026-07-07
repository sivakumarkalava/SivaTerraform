resource "aws_instance" "myinstance" {
  for_each      = var.flm
  ami           = each.value.ami_id
  instance_type = each.value.itype
  tags = {
    Name = each.value.iname
  }
  key_name = each.value.ikey
}

variable "flm" {
  description = "these are all your servers configurations"
  type = map(object({
    ami_id = string
    itype  = string
    iname  = string
    ikey   = string
  }))
}
