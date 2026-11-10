resource "local_file" "pet" {
    filename = "/home/ubuntu/pets.txt"
    content = "we love pets"
}