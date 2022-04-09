
variable "ami" {
    default = "ami-055d15d9cfddf7bd3"
}

variable "instance_type" {
    default = "t3.medium"
}

variable "instance_count" {
    default = 1
}

variable "key_name" {
    default = "big-project"
}

variable "vpc_id" {
    default = "vpc-03e32ec7b65e6db1e"
}

variable "vpc_security_group_ids" {
    default = ["sg-01cd4e6289157a940"]
}

variable "subnet_id" {
    default = "subnet-0dc881a0b6a13c17e"
}

variable "associate_public_ip_address" {
    default = true
}

variable "tags" {
    type = map(string)
    default = {
        "name" = "Jenkins-Form"
        "purpose" = "cilist-mern-stack"
        "env" = "dev"
    }
}