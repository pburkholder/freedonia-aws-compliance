variable "public_key_path" {
  description = <<DESCRIPTION
Path to the SSH public key to be used for authentication.
Ensure this keypair is added to your local SSH agent so provisioners can
connect.

Example: ~/.ssh/terraform.pub
DESCRIPTION
  default = "~/.ssh/chef-reference-arch.pub"
}

variable "key_name" {
  description = "Desired name of AWS key pair"
  default = "chef-reference-arch"
}

variable "aws_region" {
  description = "AWS region to launch servers."
  default = "us-west-2"
}

# Ubuntu Precise 12.04 LTS (x64)
variable "aws_amis" {
  default = {
    eu-west-1 = "ami-b1cf19c6"
    us-east-1 = "ami-de7ab6b6"
    us-west-1 = "ami-3f75767a"
    us-west-2 = "ami-ff20e49f"
  }
}
