variable "name" {
  description = "The droplet name."
  type        = string
}

variable "image" {
  description = "The droplet image or slug."
  type        = string
}

variable "region" {
  description = "The droplet region."
  type        = string
}

variable "size" {
  description = "The unique slug that identifies the type of Droplet. (https://docs.digitalocean.com/reference/api/api-reference/#tag/Sizes)"
  type        = string
}

variable "backups" {
  description = "Boolean controlling if backups are made."
  type        = bool
  default     = false
}

variable "monitoring" {
  description = "Boolean controlling whether monitoring agent is installed."
  type        = bool
  default     = false
}

variable "ipv6" {
  description = "Boolean controlling if IPv6 is enabled."
  type        = bool
  default     = false
}

variable "vpc_uuid" {
  description = "The ID of the VPC where the Droplet will be located."
  type        = string
  default     = null
}

variable "resize_disk" {
  description = "Boolean controlling whether to increase the disk size when resizing a Droplet. Increasing a Droplet's disk size is a permanent change."
  type        = bool
  default     = true
}

variable "ssh_keys" {
  description = "A list of SSH key IDs or fingerprints to enable. Once a Droplet is created keys can not be added or removed via this provider. Modifying this field will prompt you to destroy and recreate the Droplet."
  type        = list(string)
  default     = []
}

variable "user_data" {
  description = "A string of the desired User Data for the Droplet."
  type        = string
  default     = null
}

variable "volume_ids" {
  description = "A list of the IDs of each block storage volume to be attached to the Droplet."
  type        = list(string)
  default     = []
}

variable "droplet_agent" {
  description = "A boolean indicating whether to install the DigitalOcean agent used for providing access to the Droplet web console in the control panelA boolean indicating whether to install the DigitalOcean agent used for providing access to the Droplet web console in the control panel."
  type        = bool
  default     = true
}

variable "graceful_shutdown" {
  description = "A boolean indicating whether the droplet should be gracefully shut down before it is deleted."
  type        = bool
  default     = null
}

variable "tags" {
  description = "The tags associated with the Droplet."
  type        = list(string)
  default     = []
}