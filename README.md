# Cloud Infrastructure, Migration, and DevOps

In this project, I’ve put together an Azure-based cloud infrastructure, demonstrating how to design, deploy, and manage services with a focus on availability, scalability, security, and cost optimisation. I also simulated a migration process to give a feel for moving from on-premises systems to the cloud. 

## Project Overview

This project involved setting up a cloud infrastructure using Terraform, simulating a cloud migration by deploying a web application on an Azure VM running IIS. The idea was to showcase key skills in cloud infrastructure setup, migration, cost control, and automating everything with DevOps pipelines.

## Project Plan

### Infrastructure Design & Deployment

The first step was to set up the cloud infrastructure on Azure, making sure it could scale and was secure. I used Terraform to deploy the following components:

1. **Azure Virtual Network (VNet)** to create a secure network.
2. **Azure App Service** to host a web application.
3. **Azure SQL Database** to store data securely.
4. **Azure Key Vault** to manage application secrets securely.
5. **Azure Load Balancer** or **Application Gateway** to make sure the app is always available and can handle traffic efficiently.
6. **Network Security Groups (NSGs)** to control network traffic in and out.
7. Auto-scaling to make sure the infrastructure can handle changing workloads.

Here’s a picture showing the Terraform code used to build the infrastructure:

![Terraform](https://github.com/user-attachments/assets/399ce5d4-f932-4ca1-8e64-5c9a6fa39047)

### Cloud Migration Simulation & Cost Management

Next, I simulated a migration by setting up an Azure VM to act as an on-premises server. This VM ran a simple HTML-based web app on IIS, just like you’d see in a real-world migration scenario.

- **Azure Migrate** was used to assess how ready the app and infrastructure were for migration to Azure services like Azure App Services and Azure SQL.
- The IIS-based app was deployed on the Azure VM to simulate the move from on-prem to the cloud.
- I used **Azure Cost Management** to keep an eye on resource usage and make sure the budget wasn’t blown.
- **Azure Advisor** came in handy by giving me recommendations on how to optimise resources and cut down on costs by identifying underused services.

Here’s the web app running on the Azure VM:

![real vm](https://github.com/user-attachments/assets/a2579dec-f7ec-4707-a65a-c393aa806369)

Azure Advisor’s cost-saving recommendations looked like this:

![azure advisor](https://github.com/user-attachments/assets/fbc030d8-eee3-41a1-82b4-900ed168b63c)

I also set up a budget using **Azure Cost Management** to help track and control costs:

![Budget](https://github.com/user-attachments/assets/bb3f7039-b3a2-47cd-ac47-89aebf34c9ab)

### DevOps Pipeline & Monitoring

To make things run smoothly, I set up a CI/CD pipeline using **Azure DevOps** to automate both the infrastructure and app deployment.

- The pipeline takes care of deploying both the infrastructure and the app using **Terraform**, ensuring that everything is repeatable and consistent.
- I also used **Azure Monitor** and **Application Insights** to track performance metrics like response times, error rates, and the overall

