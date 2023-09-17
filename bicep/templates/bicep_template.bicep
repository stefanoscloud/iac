
/*
  Azure Bicep Template

  This file is an Azure Bicep template, a DSL for deploying Azure resources declaratively. Bicep offers a cleaner syntax and improved tooling compared to ARM templates.
  To deploy this Bicep template, you'd typically use the Azure CLI:

  az deployment group create --resource-group <YourResourceGroupName> --template-file <PathToThisBicepFile> --parameters <PathToParametersFile>

  The template has several sections:
  - parameters: Input values you can pass to customize deployments.
  - variables: Reusable values within this template.
  - resources: Azure resources to be provisioned.
  - outputs: Values returned after deployment, useful for further automation tasks or information retrieval.
*/

// For the parameters file, Bicep doesn't have a separate parameters file like ARM templates. 
// Instead, you'd pass parameter values directly during deployment if you want to override the default values.

// Parameters
param location string = 'westus2' // Default value for location

// Variables
var exampleVariable = 'This is an example variable'

// Resources
// Use the 'resource' keyword to define Azure resources. Example for a storage account:
// resource storageAccount 'Microsoft.Storage/storageAccounts@2021-04-01' = {
//   name: 'examplestoracc'
//   location: location
//   sku: {
//     name: 'Standard_LRS'
//   }
//   kind: 'StorageV2'
// }

// Outputs
output exampleOutput string = exampleVariable
