[![Terraform](https://github.com/Chambras/Hashitalks2024/actions/workflows/terraform.yml/badge.svg)](https://github.com/Chambras/Hashitalks2024/actions/workflows/terraform.yml)

# Mastering Databricks environment creation in the cloud with Terraform

This project is a demo of how to create a Data Analytics environments in the cloud using Terraform. It uses Azure as the cloud provider and Ansible as the configuration management tool.
It also uses a Databricks terraform provider to create all the required resources in Databricks.

## Project Structure

This project has the following folders which make them easy to reuse, add or remove.

```ssh
.
├── .github
│   └── workflows
├── Ansible
│   └── KafkaServer
│       └── roles
├── Infrastructure
│   ├── terraform-azure
│   └── terraform-databricks
└── Notebooks
    ├── SWIM
    │   └── python
    └── Songs
        ├── python
        └── sql

```

## Pre-requisites

This project requires the following versions:

- **Terraform** =>1.7.2
- **Azure provider** 3.89.0
- **Databricks provider** 1.34.0
- **Azure CLI** 2.57.0

It also uses GitHub Secrets to store all required keys and secrets. The following GitHub Secrets need to be created ahead of time:

- **ARM_SUBSCRIPTION_ID** - Your Azure Subscription ID.
- **ARM_CLIENT_ID** - Your Azure Client ID.
- **ARM_CLIENT_SECRET** - Your Azure Client Secret.
- **ARM_TENANT_ID** - Your Azure Tenant ID.
- **PBLC_VM_SSH** - Public SSH key of the VM.
- **PRVT_VM_SSH** - Private SSH key of the VM.
- **TF_API_TOKEN** - Terraform Cloud API Token.

It also needs access to [FAA SWIM](https://www.faa.gov/air_traffic/technology/swim) for the streamming part of the demo. A more complete demo and information about SWIM can be found in my article [Ingest FAA SWIM content to analyze flight data](https://aka.ms/AAgnicg)

## Caution

Be aware that by running this project your account will get billed.

## Authors

- Marcelo Zambrana
