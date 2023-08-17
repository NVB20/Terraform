Basic Setup Assigment:
Instructions: Install Terraform and create a simple configuration to launch an AWS EC2 instance.
Steps:
Install Terraform on your system.

Configure your AWS credentials using environment variables or AWS CLI.
    connect via ENV:
   $ export AWS_ACCESS_KEY_ID="an-access-key"
   $ export AWS_SECRET_ACCESS_KEY="a-secret-key"

Create a new directory for your Terraform configuration.
Create a .tf file (e.g., main.tf) and define an EC2 instance resource using the aws_instance provider.
Run terraform init to initialize the working directory.
Run terraform plan to preview the changes.
Run terraform apply to apply the changes and create the EC2 instance.
Run terraform destroy
