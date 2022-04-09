data "aws_vpc" "selected" {
    id = var.vpc_id
}

# resource "aws_subnet" "example" {
#     vpc_id            = data.aws_vpc.selected.id
#     availability_zone = "ap-southeast-3"
#     cidr_block        = cidrsubnet(data.aws_vpc.selected.cidr_block, 4, 1)
# }

resource "aws_instance" "devops_ec2" {
    ami           = var.ami
    instance_type = var.instance_type
    key_name = var.key_name
    vpc_security_group_ids = var.vpc_security_group_ids
    subnet_id = var.subnet_id
    # associate_public_ip_address = var.associate_public_ip_address
    # count         = var.instance_count

    tags = {
        Name = var.tags["name"]
        Purpose = var.tags["purpose"]
        Env = var.tags["env"]
    }
}