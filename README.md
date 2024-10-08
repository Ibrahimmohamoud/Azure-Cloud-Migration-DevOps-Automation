# Cloud Infrastructure, Migration, and DevOps

This project demonstrates how to design, deploy, and manage a cloud-based infrastructure on Azure, focusing on key aspects like high availability, scalability, security, and cost optimisation, while simulating a migration from an on-premises environment to the cloud. Throughout the project, I leveraged Azure services such as **Azure Migrate**, **Azure Virtual Machines (VMs)**, and various cost management tools to achieve these goals.

## Project Overview

In this project, I built a cloud infrastructure using Terraform and simulated a migration from an on-premises setup to Azure using **Azure Virtual Machines** (VMs). The migration was assessed and managed using **Azure Migrate** to ensure a smooth transition, while cost control was handled using **Azure Cost Management**, **Azure Advisor**, and **Azure Cost Analysis**.

## Project Plan

### Infrastructure Design & Deployment

To kick off the project, I set up the cloud infrastructure on Azure. I made sure to design the system for high availability, scalability, and security. I used **Terraform** to manage Infrastructure as Code (IaC) and deployed the following components:

1. **Azure Virtual Network (VNet)** to create a secure, isolated network.
2. **Azure App Service** to host the web application in a scalable, managed environment.
3. **Azure SQL Database** for secure data storage with advanced security features.
4. **Azure Key Vault** to securely manage and store secrets like API keys and database credentials.
5. **Azure Load Balancer** or **Application Gateway** to ensure traffic is handled efficiently and high availability is maintained.
6. **Network Security Groups (NSGs)** to enforce inbound and outbound traffic rules for enhanced security.
7. **Auto-scaling** was implemented to ensure that the infrastructure could adjust to varying workloads automatically.

Here’s a picture showing the Terraform code used to build the infrastructure:

![Terraform](./images/Terraform.png)

### Cloud Migration Simulation with Azure Migrate

For the migration simulation, I used **Azure Migrate** to assess and plan the transition of an on-premises application to Azure. This tool is great for analysing the readiness of workloads for cloud migration, and it helped me map out dependencies and provide an overview of the cost and effort required.

- **Azure Migrate** helped assess my on-premises environment, which was represented by an **Azure Virtual Machine (VM)** running **IIS** (Internet Information Services) with a simple HTML-based web app.
  
- It guided the process by analysing the readiness of the infrastructure and provided detailed dependency mapping. This ensured that I had a complete understanding of the technical requirements for migration.
  
- The migration tool also provided insights into whether the app should move to **Azure App Services** or continue running on an Azure VM.

Here’s a screenshot of the **Azure Migrate** tool in action:

![image](https://github.com/user-attachments/assets/6379a719-c75e-400e-b0bb-ba6e58ab944a)

With the analysis from **Azure Migrate**, I deployed the HTML-based app on an Azure VM to simulate the on-premises setup and planned the migration strategies accordingly.

Here’s the web app running on the Azure VM:

![Screenshot 2024-10-06 102334](https://github.com/user-attachments/assets/d4ebe32d-317c-4423-942f-0d51d5ab4df4)

### Cost Management with Azure Tools

Once the migration was simulated, managing costs became essential to ensure that the cloud setup was running efficiently without exceeding the allocated budget. I relied heavily on three tools:

#### 1. **Azure Cost Management**:
- This tool allowed me to track resource consumption and keep an eye on overall spending.
- I set up budgets and cost alerts to ensure that the project stayed within budget and resources were used optimally.

Here’s the budget I set up in Azure Cost Management to track expenses:

![Budget](https://github.com/user-attachments/assets/bb3f7039-b3a2-47cd-ac47-89aebf34c9ab)

#### 2. **Azure Advisor**:
- Azure Advisor provided real-time recommendations for optimising the Azure environment, with a particular focus on reducing costs.
- It helped me identify **underutilised resources** like VMs and app services that were not operating at full capacity, giving me the option to resize or decommission them.
  
Here are the cost-saving recommendations provided by Azure Advisor:

![azure advisor](https://github.com/user-attachments/assets/fbc030d8-eee3-41a1-82b4-900ed168b63c)

#### 3. **Azure Cost Analysis**:
- With **Azure Cost Analysis**, I was able to break down the costs incurred by different resources, visualising trends and areas of high expenditure. This allowed me to identify where the majority of the spending was happening and make adjustments accordingly.
- It also helped with long-term forecasting, showing how costs could scale as resource usage increased, which was crucial for understanding how the cloud environment would grow over time.

Here’s an example of Azure Cost Analysis in action:

![cost-analysis](https://github.com/user-attachments/assets/87c1327c-d6a9-477d-9cfc-5a8894270b32)

### DevOps Pipeline & Monitoring

To ensure the infrastructure and application could be maintained effectively, I set up a CI/CD pipeline using **Azure DevOps**. This automated the deployment of the infrastructure and the application, ensuring consistency and reducing manual errors.

- The pipeline used **Terraform** scripts for infrastructure provisioning, automating the entire process from deployment to scaling.
- Monitoring was handled using **Azure Monitor** and **Application Insights**. These tools allowed me to track key performance metrics like application response times, error rates, and overall health.

Here’s the pipeline configuration in Azure DevOps:

![My Pipeline](https://github.com/user-attachments/assets/16d3f703-319f-4a7f-bd9e-d048e8412532)

Additionally, I set up a `destroy` job in the pipeline to automate resource cleanup when needed. This ensured that unused resources didn’t continue to incur costs.

![Destroy](https://github.com/user-attachments/assets/53f046b6-ea72-48fc-b335-3ae3230351b6)

## Bringing It All Together: Cost Management, Monitoring, and Optimisation

By using a combination of **Azure Cost Management**, **Azure Advisor**, and **Azure Cost Analysis**, I was able to monitor and optimise the cost and performance of the environment. The Azure tools worked seamlessly together to provide a comprehensive view of spending and resource efficiency. I was able to:
- Set budgets and create alerts when thresholds were approached.
- Analyse resource usage and spending trends.
- Optimise resources based on real-time data and recommendations from Azure Advisor.

These tools allowed me to demonstrate effective cloud cost management techniques, making sure resources were used optimally without going over budget.

## Conclusion

This project demonstrates my hands-on experience in deploying and managing cloud infrastructure on Azure, simulating cloud migrations, and leveraging cost optimisation tools. Through the use of **Azure Migrate**, I was able to assess and manage the migration of an on-premises setup to the cloud. Coupling that with **Azure Cost Management**, **Azure Advisor**, and **Azure DevOps**, I ensured the infrastructure remained efficient, scalable, and cost-effective.

By applying industry-standard tools and best practices, this project provides a practical showcase of the skills needed for managing modern cloud environments on Azure.
