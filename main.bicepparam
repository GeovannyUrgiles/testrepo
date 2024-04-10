//main.bicepparam file will contain the parameters taht will be use by main.bicep file
param location = 'westus'
param sku = 'Standard'
param capacity = 4
param storageType = 'Standard_LRS'
param storageAccountName = 'myStorageAccountName'

  tags: {
    tagName3: 'tagValue3'
    tagName4: 'tagValue4'   
    tagName1: 'tagValue1'
    tagName2: 'tagValue2'
  }
