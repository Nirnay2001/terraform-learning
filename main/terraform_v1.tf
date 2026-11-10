resource "local_file" "pet" {
    filename = var.filename
    content = var.content
}

resource "random_pet" "server" {
    prefix = var.prefix
    length = var.length
    separator = var.separator
}