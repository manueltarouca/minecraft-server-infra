resource "linode_sshkey" "instace_ssh_key" {
  label   = "linode-pub-key"
  ssh_key = chomp(file("${var.public_key_file}"))
}

resource "linode_instance" "minecraft_server" {
  image           = "linode/ubuntu22.04"
  label           = "linode-minecraft-server"
  region          = "eu-west"
  type            = "g6-dedicated-2"
  authorized_keys = [linode_sshkey.instace_ssh_key.ssh_key]
}
