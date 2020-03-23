variable "zone" {
  default = "us-west1-a" # Oregon
}

variable "region" {
  default = "us-west1" # Oregon
}

variable "project-name" {
  default = "YOURPROJECTID"
}

variable "subnetwork-region" {
  default = "us-west1"
}

variable "network" {
  default = "jenkinsci-network"
}

variable "vm_type" {
  default = "n1-standard-1"
}

variable "os" {
  default = "centos-7-v20170816"
}

variable "credentials" {
  default = "./sacredential.json"
  
}
