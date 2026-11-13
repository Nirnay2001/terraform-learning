resource "local_file" "pet" {
    filename = var.filename
    content = "we love pets ${random_pet.server.id}"
}

resource "random_pet" "server" {
    prefix = var.prefix
    length = var.length
    separator = var.separator
}