data "aws_ami" "babaji-ami"{
  most_recent =true
  filter {
    name = "name"
    values = [var.aminame]
  }
  owners = [ var.ownid]
}
resource "aws_instance" "babaji-web"{
  ami = data.aws_ami.babaji-ami.id
  instance_type = var.intype
  tags = {
    Name = var.ec2name
  }
}