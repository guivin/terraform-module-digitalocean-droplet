resource "digitalocean_droplet" "default" {
  name              = var.name
  image             = var.image
  region            = var.region
  size              = var.size
  backups           = var.backups
  monitoring        = var.monitoring
  ipv6              = var.ipv6
  vpc_uuid          = var.vpc_uuid
  resize_disk       = var.resize_disk
  ssh_keys          = var.ssh_keys
  user_data         = var.user_data
  volume_ids        = var.volume_ids
  droplet_agent     = var.droplet_agent
  graceful_shutdown = var.graceful_shutdown
  tags              = var.tags
}