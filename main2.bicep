@description(IF example -TERNARY OPERATOR)
param environment string = 'dev' // Default to 'dev'; override with 'prod' in production deployments
param location string = 'eastus' // Default to 'eastus'; override with 'westus' in production deployments
var storageAccountName = 'mystorage${environment == 'prod' ? 'Prod' : 'Dev'}'

resource storageAccount 'Microsoft.Storage/storageAccounts@2021-06-01' = {
  name: toLower(storageAccountName) // Storage account names must be lowercase
  location: location
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
}
