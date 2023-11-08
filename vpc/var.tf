variable "vpc_cidr" {
    type = string
    description = "vpc cidr range "
    default = "10.0.0.0/16"
}

variable "public_subnet1_cidr" {
  description = "CIDR block for the public subnet 1"
  type        = string
  default     = "10.0.1.0/24"
}

variable "public_subnet2_cidr" {
  description = "CIDR block for the public subnet 2"
  type        = string
  default     = "10.0.2.0/24"
}

variable "private_subnet1_cidr" {
  description = "CIDR block for the private subnet 1"
  type        = string
  default     = "10.0.3.0/24"
}

variable "private_subnet2_cidr" {
  description = "CIDR block for the private subnet 2"
  type        = string
  default     = "10.0.4.0/24"
}

variable "availability_zones" {
    type = list(string)
    description = ""
    default = [ "us-west-1b", "us-west-1c" ]
}

variable "tags" {
  type = map
  description = "tags"
  # we don't define a default values here because we need to get the values from locals.tf that are 
  #not in the same folder
  #this is the 2nd step fromn the 4steps
}


