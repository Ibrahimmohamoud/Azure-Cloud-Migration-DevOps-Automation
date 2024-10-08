# Cloud Infrastructure, Migration, and DevOps

This project shows how I built, deployed, and managed a cloud-based infrastructure on Azure. It focuses on making things scalable, secure, and cost-effective, while simulating a move from an on-premises environment to the cloud. I used tools like **Azure Migrate**, **Azure Virtual Machines (VMs)**, and various cost management features to get the job done.

---

## Project Overview

I set up the cloud infrastructure using Terraform and ran a migration from an on-premises setup to Azure using **Azure VMs**. **Azure Migrate** helped assess the migration, while cost management tools like **Azure Cost Management** and **Azure Advisor** kept everything efficient and within budget.

---

## Project Plan

### Infrastructure Design & Deployment

I started by setting up a cloud infrastructure that was secure, scalable, and built to handle a range of workloads. Using **Terraform**, I deployed:

- **Azure Virtual Network (VNet)** for a secure network.
- **Azure App Service** to host the web app in a scalable environment.
- **Azure SQL Database** for secure data storage.
- **Azure Key Vault** to store and manage secrets.
- **Azure Load Balancer** or **Application Gateway** for handling traffic.
- **Network Security Groups (NSGs)** to control inbound and outbound traffic.
- **Auto-scaling** to manage varying workloads automatically.

Here’s a look at the Terraform code I used:

![Terraform](https://github.com/user-attachments/assets/c087cd65-7b32-4a7d-9ba4-9f93e3868401)
---

### Cloud Migration Simulation with Azure Migrate

To simulate the migration, I used **Azure Migrate** to assess and plan the move of an on-premises app to Azure. The tool helped figure out how ready the workloads were for migration and mapped out the dependencies.

- **Azure Migrate** gave me an overview of the on-premises setup, which I replicated using an **Azure VM** running **IIS** with a simple HTML web app.
- It showed whether the app should move to **Azure App Services** or stay on an Azure VM based on the dependencies.

Here’s a snapshot of **Azure Migrate** in action:

![Screenshot 2024-10-08 115231](https://github.com/user-attachments/assets/32a53499-a36f-4e0a-b2bb-c79fa1bdbb9d)

With **Azure Migrate**, I deployed the app on an Azure VM, simulating an on-prem setup, and planned out the migration strategy.

Here’s the web app running on the Azure VM:

![Screenshot 2024-10-06 102334](https://github.com/user-attachments/assets/87ce4cea-262f-4812-8a4a-1e035c1862e8)

---

### Cost Management with Azure Tools

Managing costs was crucial throughout the project. I used three main tools to keep everything within budget:

#### 1. **Azure Cost Management**:
- This tool helped track resource usage and monitor spending.
- I set up budgets and alerts to keep the project on track.

Here’s a look at the budget setup:

![Budget](./images/Budget.png)

#### 2. **Azure Advisor**:
- Azure Advisor provided real-time advice on how to optimise the cloud setup and save costs.
- It pointed out underused resources like VMs and services that could be scaled down or removed.

Here’s the cost-saving advice from Azure Advisor:

![Azure Advisor](./images/azure_advisor.png)

#### 3. **Azure Cost Analysis**:
- This tool broke down where the costs were coming from, showing trends and helping with future planning.
- It helped me forecast how the costs would scale as usage grew.

Here’s a snapshot of **Azure Cost Analysis**:

![Screenshot 2024-10-08 113835](https://github.com/user-attachments/assets/53ce519d-0b70-415d-9228-dabc3b5eff59)

---

### DevOps Pipeline & Monitoring

To keep everything smooth and automated, I set up a CI/CD pipeline using **Azure DevOps**. This automated the deployment of both the infrastructure and the app.

- The pipeline used **Terraform** to handle infrastructure as code.
- I used **Azure Monitor** and **Application Insights** to keep track of key performance metrics like response times and error rates.

Here’s how the pipeline looks:

![Azure DevOps Pipeline](./images/My_Pipeline.png)

I also set up a `destroy` job to automate resource clean-up when things weren’t needed anymore, helping to avoid extra costs.

![Destroy Job](./images/Destroy.png)

---

## Pulling It All Together: Cost Management, Monitoring, and Optimisation

Using a combination of **Azure Cost Management**, **Azure Advisor**, and **Azure Cost Analysis**, I managed to monitor and optimise both cost and performance. Together, these tools allowed me to:
- Set up budgets and alerts.
- Track usage and spending.
- Optimise resources based on Azure Advisor's recommendations.

This meant the cloud infrastructure was used efficiently without going over budget.

---

## Conclusion

This project showcases my experience in building and managing cloud infrastructure on Azure, handling cloud migrations, and keeping everything cost-efficient. Using **Azure Migrate**, I assessed and managed the migration of an on-prem setup to the cloud. By combining **Azure Cost Management**, **Azure Advisor**, and **Azure DevOps**, I kept the infrastructure scalable, efficient, and cost-effective.

Overall, this project demonstrates the key skills needed for managing modern cloud environments using Azure’s tools and best practices.

