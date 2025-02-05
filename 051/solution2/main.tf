module "docker" {
  source = "terraform-aws-modules/ec2-instance/aws"

  name      = "docker"
  ami       = "ami-09c813fb71547fc4f"
  user_data = file("docker.sh")

  vpc_security_group_ids = ["sg-08ab8575176da550c"]
  subnet_id              = "subnet-0f87134601ecece2c"
  instance_type          = "t2.micro"

  tags = {
    Name        = "docker"
    Terraform   = "true"
    Environment = "dev"
  }
}
