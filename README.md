https://docs.microsoft.com/en-us/azure/virtual-machines/windows/faq#what-are-the-username-requirements-when-creating-a-vm

# Tableau Server on Windows - Single Node   

<a href="https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2FAzure%2Fazure-quickstart-templates%2Fmaster%2F100-blank-template%2Fazuredeploy.json" target="_blank">
<img src="https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/1-CONTRIBUTION-GUIDE/images/deploytoazure.png"/>
</a>
<a href="http://armviz.io/#/?load=https%3A%2F%2Fraw.githubusercontent.com%2FAzure%2Fazure-quickstart-templates%2Fmaster%2F100-blank-template%2Fazuredeploy.json" target="_blank">
<img src="https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/1-CONTRIBUTION-GUIDE/images/visualizebutton.png"/>
</a>

To deploy this template using the scripts from the root of this repo: 

(This sample has artifacts that need to be "staged" for deployment (Configuration Scripts, Nested Templates, DSC Packages) so you have to set the upload switch on the command.
You can optionally specify a storage account to use, if so the storage account must already exist within the subscription.  If you don't want to specify a storage account
one will be created by the script (think of this as "temp" storage for AzureRM) and reused by subsequent deployments.)

```PowerShell
.\Deploy-AzureResourceGroup.ps1 -ResourceGroupLocation 'eastus' -ArtifactsStagingDirectory 'tableau-server-windows-1node' -UploadArtifacts 
```
```bash
azure-group-deploy.sh -a tableau-server-windows-1node -l eastus -u
```

This template deploys a **single node Tableau Server instance on a Windows, Standard_D16_v3 VM instance**.

`Tags: Tableau, Tableau Server, Windows Server, Analytics, Self-Service, Data Visualization, Windows`

## Solution overview and deployed resources

Tableau Server on Azure is browser and mobile-base visual analytics anyone can use.  Publish interactive dashboards with Tableau Desktop and share them throughout your organization. Embedded or as a stand-alone application, you can empower your business to find answers in minutes, not months.  By deploying Tableau Server on Azure with this quickstart you can take full advantage of the power and flexibility of Azure Cloud infrastructure.  

Tableau helps tens of thousands of people see and understand their data by making it simple for the everyday data worker to perform ad-hoc visual analytics and data discovery as well as the ability to seamlessly build beautiful dashboards and reports. Tableau is designed to make connecting live to data of all types a simple process that doesn't require any coding or scripting. From cloud sources like Azure SQL Data Warehouse, to on-premise Hadoop clusters, to local spreadsheets, Tableau gives everyone the power to quickly start visually exploring data of any size to find new insights.    

The following resources are deployed as part of the solution

#### Resource provider 1

Description Resource Provider 1

+ **Resource type 1A**: Description Resource type 1A
+ **Resource type 1B**: Description Resource type 1B
+ **Resource type 1C**: Description Resource type 1C

#### Resource provider 2

Description Resource Provider 2

+ **Resource type 2A**: Description Resource type 2A

#### Resource provider 3

Description Resource Provider 3

+ **Resource type 3A**: Description Resource type 3A
+ **Resource type 3B**: Description Resource type 3B

## Prerequisites

Decscription of the prerequistes for the deployment

## Deployment steps

You can click the "deploy to Azure" button at the beginning of this document or follow the instructions for command line deployment using the scripts in the root of this repo.

## Usage

#### Connect

How to connect to the solution

#### Management

How to manage the solution

## Notes

Solution notes