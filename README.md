# Cloud Infrastructure, Migration, and DevOps

This project demonstrates my ability to design, deploy, and manage cloud-based infrastructure on Azure, focusing on high availability, scalability, security, cost optimisation, and DevOps practices. This project is built to simulate a cloud migration scenario using Azure virtual machines and services.

## Project Overview

In this project, I built a fully functional Azure cloud infrastructure using Terraform and simulated the migration of a web application from an on-premises environment using an Azure VM running IIS. The objective was to showcase skills in infrastructure setup, cloud migration, cost optimisation, and automation using DevOps pipelines.

## Project Plan

### Infrastructure Design & Deployment

I began by setting up a robust infrastructure on Azure that emphasises high availability, scalability, and security. The following components were deployed using Terraform:

1. **Azure Virtual Network (VNet)** to enable secure networking.
2. **Azure App Service** to host a sample web application.
3. **Azure SQL Database** for data storage with security features.
4. **Azure Key Vault** to securely store application secrets.
5. **Azure Load Balancer** or **Application Gateway** to ensure high availability.
6. **Network Security Groups (NSGs)** for securing inbound and outbound traffic.
7. Auto-scaling configurations to handle varying workloads.

Here is a screenshot of the Terraform code used to build the infrastructure:

![Terraform Infrastructure](./path_to_image/Screenshot_2024-10-06_102334.png)

### Cloud Migration Simulation & Cost Management

Next, I simulated a cloud migration using an Azure VM that hosted a simple HTML-based web app on IIS, representing a real-world on-premises solution.

- **Azure Migrate** was used to assess the readiness for migration to Azure App Services and Azure SQL.
- The IIS-based app was successfully migrated to Azure VM, which mimicked a transition from an on-premises environment to the cloud.
- **Azure Cost Management** was employed to track resource costs and ensure budget adherence.
- **Azure Advisor** provided cost-saving recommendations and optimisations for unused resources.

Here is the migrated web app hosted on the Azure VM:

![Web App Deployed on IIS](./path_to_image/Screenshot_2024-10-06_124752.png)

Azure Advisor provided cost-saving recommendations as seen below:

![Azure Advisor Cost Recommendations](./path_to_image/Screenshot_2024-10-06_124450.png)

Additionally, I set up a budget in Azure Cost Management to track and manage expenses:

![Azure Cost Management](./path_to_image/Screenshot_2024-10-05_114938.png)

### DevOps Pipeline & Monitoring

To streamline infrastructure management and application deployment, I implemented a CI/CD pipeline using **Azure DevOps**. The pipeline was automated to handle both infrastructure provisioning and web application deployment.

- The pipeline was configured to automate the deployment of the app and infrastructure using **Terraform**.
- **Azure Monitor** and **Application Insights** were integrated to track application performance metrics, such as response times, error rates, and health monitoring.

Below is the pipeline configuration in Azure DevOps:

![Azure DevOps Pipeline](./path_to_image/My_Pipeline.png)

Additionally, a `destroy` job was created in the pipeline to automate the cleanup of resources when needed:

![Terraform Destroy Process](./path_to_image/Destroy.png)

## Cost Management & Optimisation

Azure Cost Management and Azure Advisor played a crucial role in this project by helping to track and manage the cost of resources. I applied best practices to ensure resources were not underutilised and that unnecessary expenses were avoided.

- **Azure Advisor** provided recommendations for optimising resources, such as identifying unused virtual machines and app services.
- **Azure Cost Management** was used to create alerts and monitor spending to ensure that the cloud environment remained cost-efficient.

Through this process, I was able to demonstrate effective cloud cost management and the ability to optimise resource usage, keeping in line with best practices for cloud cost control.

## Conclusion

This project is a comprehensive demonstration of cloud infrastructure deployment, cloud migration, cost optimisation, and DevOps automation using Azure. By simulating an on-premises migration, applying cost management tools, and setting up a fully automated CI/CD pipeline, I was able to showcase practical skills that align with industry best practices for cloud computing and operations.
