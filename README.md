
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
- I also used **Azure Monitor** and **Application Insights** to track performance metrics like response times, error rates, and the overall health of the app.

Here’s what the pipeline configuration in Azure DevOps looks like:

![My Pipeline](https://github.com/user-attachments/assets/16d3f703-319f-4a7f-bd9e-d048e8412532)

Additionally, a `destroy` job was created to automate the cleanup of resources when they were no longer needed:

![Destroy](https://github.com/user-attachments/assets/53f046b6-ea72-48fc-b335-3ae3230351b6)

## Cost Management & Optimisation

Throughout this project, **Azure Cost Management** and **Azure Advisor** were essential tools for tracking and managing cloud costs. By following best practices, I ensured that resources were used efficiently and that unnecessary expenses were avoided.

- **Azure Advisor** provided recommendations for optimising resource usage, such as identifying underutilised VMs and app services that could be resized or decommissioned to save costs.
- **Azure Cost Management** was used to create budget alerts and monitor spending in real-time, ensuring that the infrastructure remained cost-efficient without sacrificing performance.

![costt](https://github.com/user-attachments/assets/ac741ea6-b9aa-4ac5-a0d5-e28e14cbe431)

Through this process, I demonstrated effective cloud cost management techniques and the ability to optimise resources while keeping overall costs down.

## Conclusion

This project serves as a comprehensive demonstration of my expertise in cloud infrastructure deployment, cloud migration, cost optimisation, and DevOps automation using Azure. By simulating an on-premises migration, leveraging cost management tools, and setting up a fully automated CI/CD pipeline, I was able to showcase the practical skills necessary to operate in modern cloud environments. These are aligned with industry best practices for cloud computing and operations.
