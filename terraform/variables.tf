variable "yourname" {
  description = "Your name, lowercase, no spaces. Makes resource names unique."
  type        = string
}

variable "location" {
  description = "Azure region to deploy into."
  type        = string
  default     = "East US"
}

variable "node_count" {
  description = "Number of worker nodes in the system pool."
  type        = number
  default     = 2
}

variable "vm_size" {
  description = "VM size for each node. B2s is small and cheap for a lab."
  type        = string
  default     = "Standard_B2s"
}

variable "tags" {
  type = map(string)
  default = {
    project     = "aks-helm"
    environment = "dev"
    managed_by  = "terraform"
  }
}
