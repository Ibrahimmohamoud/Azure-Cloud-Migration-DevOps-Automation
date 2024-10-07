# Cloud Infrastructure, Migration, and DevOps

This project demonstrates my ability to design, deploy, and manage cloud-based infrastructure on Azure, focusing on high availability, scalability, security, cost optimisation, and DevOps practices. This project is built to simulate a cloud migration scenario using Azure virtual machines and services.

## Project Overview

In this project, I built a fully functional Azure cloud infrastructure using Terraform and simulated the migration of a web application from an on-premises environment using an Azure VM running IIS. The objective was to showcase skills in infrastructure setup, cloud migration, cost optimisation, and automation using DevOps pipelines.

## Project Plan

### Infrastructure Design & Deployment

I began by setting up a cloud infrastructure on Azure that emphasises high availability, scalability, and security. Using Terraform, I deployed the following components:

1. **Azure Virtual Network (VNet)** to create a secure network for communication.
2. **Azure App Service** to host a sample web application.
3. **Azure SQL Database** to handle data storage with built-in security features.
4. **Azure Key Vault** to securely store application secrets.
5. **Azure Load Balancer** or **Application Gateway** to ensure high availability and manage traffic efficiently.
6. **Network Security Groups (NSGs)** to secure the network by controlling inbound and outbound traffic.
7. Auto-scaling configurations were set up to manage workloads that vary in demand, ensuring that the infrastructure scales as needed.

Here’s a screenshot showing the Terraform code used to build the infrastructure:

![Terraform Infrastructure](./images/Terraform.png)

### Cloud Migration Simulation & Cost Management

Next, I simulated a cloud migration by setting up an Azure VM to act as an on-premises server running a simple HTML-based web app on IIS, mimicking a real-world scenario.

- **Azure Migrate** was used to assess how prepared the infrastructure was for migration to Azure services, such as Azure App Services and Azure SQL.
- The IIS-based app was deployed to an Azure VM, simulating the move from an on-premises environment to a cloud environment.
- **Azure Cost Management** was then employed to monitor resource usage and ensure that costs remained within budget.
- **Azure Advisor** provided useful recommendations on optimising the setup by identifying unused or underutilised resources, ensuring cost efficiency.

Here’s the web app running on the Azure VM:

![Web App Deployed on IIS](./images/real_vm.png)

Azure Advisor also provided the following cost-saving recommendations:

![Azure Advisor Cost Recommendations](./images/azure_advisor.png)

In addition, I set up a budget in Azure Cost Management to track and control expenses effectively:

./images/Budget.png)

### DevOps Pipeline & Monitoring

To streamline the deployment and management of the infrastructure, I set up a continuous integration/continuous delivery (CI/CD) pipeline using **Azure DevOps**. This pipeline was designed to automate both the provisioning of the infrastructure and the deployment of the web application.

- The pipeline automates the deployment process using **Terraform** to ensure that both infrastructure and application deployments are consistent and repeatable.
- **Azure Monitor** and **Application Insights** were integrated to provide detailed performance metrics, including response times, error rates, and overall application health.

Here’s the pipeline configuration in Azure DevOps:

![Azure DevOps Pipeline](./images/My_Pipeline.png)

Additionally, a `destroy` job was created to automate the cleanup of resources when they were no longer needed:

![Terraform Destroy Process](./images/Destroy.png)

## Cost Management & Optimisation

Throughout this project, **Azure Cost Management** and **Azure Advisor** were essential tools for tracking and managing cloud costs. By following best practices, I ensured that resources were used efficiently and that unnecessary expenses were avoided.

- **Azure Advisor** provided recommendations for optimising resource usage, such as identifying underutilised VMs and app services that could be resized or decommissioned to save costs.
- **Azure Cost Management** was used to create budget alerts and monitor spending in real-time, ensuring that the infrastructure remained cost-efficient without sacrificing performance.

Through this process, I demonstrated effective cloud cost management techniques and the ability to optimise resources while keeping overall costs down.

## Conclusion

This project serves as a comprehensive demonstration of my expertise in cloud infrastructure deployment, cloud migration, cost optimisation, and DevOps automation using Azure. By simulating an on-premises migration, leveraging cost management tools, and setting up a fully automated CI/CD pipeline, I was able to showcase the practical skills necessary to operate in modern cloud environments. These are aligned with industry best practices for cloud computing and operations.
