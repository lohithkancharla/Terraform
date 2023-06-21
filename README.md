# Terraform
	- Questions
	- Next Steps
		○ Create multiple rs and push it to github - 6/21/23
	- Description
		○ State File
			§ Terraform stores the state of the infrastructure that is being created from the TF files, this helps to map real world resources to existing configurations.
			§ State file contains information about the resources that are live
			§ Whenever we execute terraform plan command if the resource is not created previously it creates new resource 
		○ Desired State
			§ Desired state is nothing but a code that is defined in a terraform configuration, it represents how we want our infrastructure to be changed. 
		○ Current State
			§ It is the actual state of the resource that is currently deployed in infrastructure. 
			§ Always desired state and current state are not same because we can manually modify current state in the infrastructure.
			§ Terraform main purpose is to match current state with desired state.
			§ When we run terraform apply, tf compares desired state with current state and provides actions to reach the desired state.
			§ But in some cases if we don't define configurations in desired state and make changes directly in current state even if we run terraform apply those changes cannot be reverted. 

	- Terraform
		○ Folder Struct
			§ Main.tf
			§ Output.tf
				□ Output allows us to present specific data to users.
			§ Attributes.tf
				□ It provides data associated with resource. 
			§ Variables.tf
		○ Commands
			§ Terraform init
				□ Initialize the terraform in given project workspace and it automatically downloads the required provider  plugins, saves them in .terraform directory.
			§ terraform plan
				□ Syntax check
				□ Determines how many resources to be added/removed/destroyed
			§ terraform apply
				□ Executes the terraform file and provides the results after confirmation
			§ terraform apply --auto-approve
				□ Executes the terraform file without user approve
			§ Terraform destroy
				□ It allows us to destroy all the resource that are created within the folder
			§ terraform destroy -target resource type.local resource name
				□ It allow us to destroy only specified target
				□ terraform destroy -target aws_instance.myec2
				
		
				
#Terraform AWS

	- Steps to follow
		○ Authentication and Authorization
			§ Before creating a resource through terraform we need to authenticate with AWS.
			§ To do this we need to go to IAM in AWS console and create a user by providing name
			§ After we need to provide authorization options depending on the requirements
			§ Now we need to retrieve access key and secret key to provide authentication from terraform to AWS
				□ Code in terraform
				
				provider "aws" {
				  region     = "us-west-2"
				  access_key = "AKIAZCYQGEPF3PRDQP7C"
				  secret_key = "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"
				}
				
			
		○ VM configuration through Terraform
			§ Now we need to create VM 
			§ First we need to select the type of VM - 1
			§ Second we need to provide memory required ( instance) -2
				□ Code in terraform
				
				resource "aws_instance" "web" {
				  ami           = "ami-07dfed28fcf95241c" (1)
				  instance_type = "t2.micro"              (2)
				}
		
		○ Execute the code
			§ Terraform init  
			§ Terraform plan
			§ Terraform apply
		
			
		
		
