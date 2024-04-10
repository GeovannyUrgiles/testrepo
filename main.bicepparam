//main.bicepparam file will contain the parameters taht will be use by main.bicep file
param location = 'westus'
param sku = 'Standard'
param capacity = 4

tags: {
tagName1: 'tagValue1-1'
tagName2: 'tagValue2-1'
tagName3: 'tagValue3-1'
tagName4: 'tagValue4-1'
tagName7: 'tagValue7-1'
tagName1: 'tagValue1'
tagName2: 'tagValue2'
tagName3: 'tagValue3'
tagName4: 'tagValue4'
tagName7: 'tagValue7'
}
param storageType = 'Standard_LRS'
param storageAccountName = 'myStorageAccountName'
