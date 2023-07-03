<p align="center">
  <a href="https://aws.amazon.com/"><img src="https://img.shields.io/badge/AWS-Cloud%20Services-yellow.svg" alt="AWS"></a>
  <a href="https://aws.amazon.com/redshift/"><img src="https://img.shields.io/badge/Redshift-Data%20Warehouse-red.svg" alt="Redshift"></a>
  <a href="https://www.getdbt.com/"><img src="https://img.shields.io/badge/dbt-Data%20Transformation%20Tool-lightgrey.svg" alt="dbt"></a>  
  <a href="https://www.terraform.io/"><img src="https://img.shields.io/badge/Terraform-Infrastructure%20as%20Code-blue.svg" alt="Terraform"></a>
</p>

# Psychology Insights Redshift Transform

This repository contains the code and resources for the data transform of the rate app in the Psychology Insights project.

## Getting Started

To set up the Redshift infrastructure, follow these steps:

### Prerequisites

AWS subscription: If you don't have an AWS subscription, create a free account before you begin.
Install and configure Terraform

### Use Terraform to deploy redshift cluster

1. Clone this repository :
```bash
git clone https://github.com/fuguixing/psychology-insights-redshift-transform.git
```
2. Configure aws cli:
```bash
aws configure
```
3. Initialize Terraform:
```bash
cd infra
terraform init -upgrade
```
4. Create and apply a Terraform execution plan:
```bash
terraform plan -out main.tfplan
terraform apply main.tfplan
```
5. Clean up resources:
```bash
terraform plan -destroy -out main.destroy.tfplan
terraform apply main.destroy.tfplan
```
### Creating tables and schemas

1. Execute the data-collection.sh script, download the data and upload it to s3

2. Execute init.sql, create schema and table, copy data from s3 to redshift

### Run dbt

1. Modify profiles.yml

2. Run dbt:
```bash
cd dbt
dbt deps
dbt compile
dbt run
```
## Contributing

Welcome contributions to improve the machine learning training process in the Snowflake Training Repository. If you'd like to contribute, please follow these guidelines:

- Fork the repository and create a new branch for your feature or improvement.
- Commit your changes and push your branch to your forked repository.
- Submit a pull request, describing your changes in detail.

## License

This project is licensed under the [MIT License](LICENSE).