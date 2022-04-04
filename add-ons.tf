resource "null_resource" "add-ons" {
    provisioner "local-exec" {
        command = "/bin/bash add-ons.sh"
    }
    depends_on = [
       helm_release.hextris 
    ]
}
