variable "filename" {
    default = "/home/ubuntu/pets.txt"
    type = string
}

variable "content" {
  default = "we love pets ${random_pet.server.id}"
  type = string
}

variable "length" {
  default = 1
}

variable "prefix" {
  default = "Mrs"
}

variable "separator" {
  default = "."
}