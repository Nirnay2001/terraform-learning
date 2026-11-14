resource "local_file" "pet" {
    filename = var.filename
    content = "we love pets ${random_pet.server.id}"
    depends_on = [ random_pet.server ]
    file_permission = 0777
    lifecycle {
      create_before_destroy = true
    }
}

resource "random_pet" "server" {
    prefix = var.prefix
    length = var.length
    separator = var.separator
}

output "pet_name" {
  value = random_pet.server.id
  description = "This is the name of the pet"
}