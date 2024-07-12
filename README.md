# Docker express testing CICD

```bash
#!/bin/bash
# Update the instance
sudo yum update -y

# Install Docker
sudo amazon-linux-extras install docker -y
sudo service docker start
sudo usermod -a -G docker ec2-user

# Install CodeDeploy agent
cd /home/ec2-user
sudo yum install -y ruby
wget https://aws-codedeploy-us-west-2.s3.us-west-2.amazonaws.com/latest/install
chmod +x ./install
sudo ./install auto
sudo service codedeploy-agent start

```