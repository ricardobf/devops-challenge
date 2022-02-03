# DevOps Engineer Challenge

Infrastructure as Code (IaC)(Terraform) for a simple web application that runs on AWS Lambda that prints the request header, method, and body.
The application is integrated with GitHub Actions to update the lambda function.


**Creating the infrastructure**:

- Install AWS CLI: https://linuxhint.com/install_aws_cli_ubuntu/
- Install Terraform: https://learn.hashicorp.com/tutorials/terraform/install-cli
- Create an AWS Account and then follow the steps to create a user and access key: https://docs.aws.amazon.com/powershell/latest/userguide/pstools-appendix-sign-up.html

Run the following command to configure the AWS profile for your account:
- `# aws configure --profile aws-dev-account`

Then, navigate to the resources folder:
- `# cd resources/`

Initialize Terraform and create a new workspace:
- `# terraform init`
- `# terraform workspace new dev`

Apply the infrastructure:
- `# terraform apply -var-file="config/dev.tfvars"`

**Notes**:  

- The GitHub Actions pipeline will update the bucket with the code on api/api.js.
- An example is running on https://l9y6rnkmj4.execute-api.eu-central-1.amazonaws.com/api

**Example Test Case**:
```
curl --header "Content-Type: application/json" --data '{"username":"xyz","password":"xyz"}' http://https://l9y6rnkmj4.execute-api.eu-central-1.amazonaws.com/api
```

**Response**:

Welcome to our demo API, here are the details of your request:

***Headers***:
Content-Type: application/json

***Method***:
Get

***Body***:
{"username":"xyz", "password":"xyz"}

**Clean Up**

Navigate to the resources folder:
- `# cd resources/`

Run the Terraform Destroy command:
- `# terraform destroy -var-file="config/dev.tfvars"`