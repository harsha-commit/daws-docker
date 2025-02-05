module "docker" {
  source = "terraform-aws-modules/ec2-instance/aws"

  name      = "docker"
  ami       = "ami-09c813fb71547fc4f"
  user_data = file("docker.sh")

  vpc_security_group_ids = ["sg-08ab8575176da550c"]
  subnet_id              = "subnet-0f87134601ecece2c"
  instance_type          = "t3.micro"

  root_block_device = [
    {
      volume_type = "gp3"
      volume_size = 50
    }
  ]

  tags = {
    Name        = "docker"
    Terraform   = "true"
    Environment = "dev"
  }
}
