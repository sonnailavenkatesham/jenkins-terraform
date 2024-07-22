resource "aws_instance" "ec2" {
  count                       = length(var.instance_names)
  ami                         = "ami-0b4f379183e5706b9"
  instance_type               = "t2.micro"
  vpc_security_group_ids      = [aws_security_group.allow_traffic.id]

  associate_public_ip_address = (var.instance_names[count.index] == "web" || var.instance_names[count.index] == "Jenkins" || var.instance_names[count.index] == "agent" ? true : false)

  subnet_id                   = (var.instance_names[count.index] == "web" || var.instance_names[count.index] == "Jenkins" || var.instance_names[count.index] == "agent" ? aws_subnet.public.id : aws_subnet.private.id)

  user_data = (var.instance_names[count.index] == "Jenkins" ? file("jenkins.sh") : (var.instance_names[count.index] == "agent" ? file("agent.sh") : 0))

  tags = {
    Name = var.instance_names[count.index]
  }
}