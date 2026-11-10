resource "local_file" "pet" {
    filename = "/home/ubuntu/pets.tx"
    content = "we love pets"
}