resource "aws_instance" "ec2" {
  count         = length(var.instance_names)
  ami           = "ami-0b4f379183e5706b9"
  instance_type = "t2.micro"
  subnet_id     = (var.instance_names[count.index] == "web" ? aws_subnet.public.id : aws_subnet.private.id)
  tags = {
    Name = var.instance_names[count.index]
  }
  provisioner "local-exec" {
    command = "echo ${(join(",", (self.public_ip[*])))} >> inventory"
  }
}