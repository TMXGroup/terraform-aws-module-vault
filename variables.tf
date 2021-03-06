variable "create" {
  description = "Create Module, defaults to true."
  default     = true
}

variable "name" {
  description = "Name for resources, defaults to \"vault-aws\"."
  default     = "vault-aws"
}

variable "ami_owner" {
  description = "Account ID of AMI owner."
  default     = "012230895537" # HashiCorp Public AMI AWS account
}

variable "release_version" {
  description = "Release version tag (e.g. 0.1.0, 0.1.0-rc1, 0.1.0-beta1, 0.1.0-dev1), defaults to \"0.1.0\", view releases at https://github.com/hashicorp/guides-configuration#hashistack-version-tables"
  default     = "0.1.0"
}

variable "s3_logging_target" {
  description = "Target bucket for s3 logs"
}

variable "vault_version" {
  description = "Vault version tag (e.g. 0.11.3 or 0.11.3-ent), defaults to \"0.11.3\"."
  default     = "0.11.3"
}

variable "consul_version" {
  description = "Consul version tag (e.g. 1.2.3 or 1.2.3-ent), defaults to \"1.2.3\"."
  default     = "1.2.3"
}

variable "consul_sg_id" {
  description = "Security group id from consul cluster"
  type        = "string"
  default     = ""
  
}

variable "os" {
  description = "Operating System (e.g. RHEL or Ubuntu), defaults to \"RHEL\"."
  default     = "RHEL"
}

variable "os_version" {
  description = "Operating System version (e.g. 7.3 for RHEL or 16.04 for Ubuntu), defaults to \"7.3\"."
  default     = "7.3"
}

variable "vpc_id" {
  description = "VPC ID to provision resources in."
}

variable "vpc_cidr" {
  description = "VPC CIDR block to provision resources in."
}

variable "subnet_ids" {
  description = "Subnet ID(s) to provision resources in."
  type        = "list"
}

variable "public" {
  description = "Open up nodes to the public internet for easy access - DO NOT DO THIS IN PROD, defaults to false."
  default     = false
}

variable "ext_cert_arn" {
  description = "ARN for AWS issues certifcate"
}

variable "count" {
  description = "Number of Vault nodes to provision across private subnets, defaults to private subnet count."
  default     = -1
}

variable "instance_type" {
  description = "AWS instance type for Vault node (e.g. \"m4.large\"), defaults to \"t2.small\"."
  default     = "t2.small"
}

variable "image_id" {
  description = "AMI to use, defaults to the HashiStack AMI."
  default     = ""
}

variable "instance_profile" {
  description = "AWS instance profile to use."
  default     = ""
}

variable "user_data" {
  description = "user_data script to pass in at runtime."
  default     = false
}

variable "bastion_ip" {
  description = "IP address of bastion h"
}

variable "ssh_key_name" {
  description = "AWS key name you will use to access the instance(s)."
}

variable "use_lb_cert" {
  description = "Use certificate passed in for the LB IAM listener, \"lb_cert\" and \"lb_private_key\" must be passed in if true, defaults to false."
  default     = false
}

variable "lb_cert" {
  description = "Certificate for LB IAM server certificate."
  default     = ""
}

variable "lb_private_key" {
  description = "Private key for LB IAM server certificate."
  default     = ""
}

variable "lb_cert_chain" {
  description = "Certificate chain for LB IAM server certificate."
  default     = ""
}

variable "lb_ssl_policy" {
  description = "SSL policy for LB, defaults to \"ELBSecurityPolicy-2016-08\"."
  default     = "ELBSecurityPolicy-2016-08"
}

variable "lb_bucket" {
  description = "S3 bucket override for LB access logs, `lb_bucket_override` be set to true if overriding"
  default     = ""
}

variable "lb_bucket_override" {
  description = "Override the default S3 bucket created for access logs with `lb_bucket`, defaults to false."
  default     = false
}

variable "lb_bucket_prefix" {
  description = "S3 bucket prefix for LB access logs."
  default     = ""
}

variable "lb_logs_enabled" {
  description = "S3 bucket LB access logs enabled, defaults to true."
  default     = true
}

variable "lb_is_internal" {
  default     = false
}
variable "pub_subnet_ids" {
   type        = "list"
}

variable "subnet_private_ids" {
   type        = "list"
}

variable "target_groups" {
  description = "List of target group ARNs to apply to the autoscaling group."
  type        = "list"
  default     = []
}

variable "users" {
  description = "Map of SSH users."

  default = {
    RHEL   = "ec2-user"
    Ubuntu = "ubuntu"
  }
}

variable "tags" {
  description = "Optional map of tags to set on resources, defaults to empty map."
  type        = "map"
  default     = {}
}

variable "tags_list" {
  description = "Optional list of tag maps to set on resources, defaults to empty list."
  type        = "list"
  default     = []
}

variable "tmx-ip-block-inet" {
  description = "TMX Public IP address range for INET firewall"
  default     = "142.201.1.0/24"
}

variable "tmx-ip-block-dmz" {
  description = "TMX Public IP address range for DMZ servers"
  default     = "142.201.0.0/24"
}

variable "tmx-ip-block-corp-nat" {
  description = "TMX Public IP address range for Internet Access"
  default     = "142.201.5.0/24"
}

variable "tmx-ip-block-wifi-firewall" {
  description = "TMX Public IP address range for WiFi Internet Access"
  default     = "142.201.8.0/24"
}

variable "enable_auto_unseal" {
  description = "Use AWS KMS key to auto-unseal the cluster"
  default = true
}

variable "auto_unseal_kms_key_arn" {
  description = "AWS KMS key resource number"
  default = ""
}