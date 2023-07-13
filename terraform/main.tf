provider "aws" {
    region = "ap-southeast-1"
}
#terraform apply -auto-approve
resource "aws_vpc" "dev-vpc" {
    cidr_block = "10.0.0.0/16"
    
    tags= {
        Name : "shek"
    }
}
resource "aws_subnet" "dev-subent" {
    vpc_id = aws_vpc.dev-vpc.id 
    cidr_block = "10.0.10.0/24"
    availability_zone = "ap-southeast-1a"
}
