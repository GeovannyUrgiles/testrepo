using './maincr.bicep'

param cacheServiceName = 'redis-vant-np3-t4-usaz'
param cacheServiceResourceGroup = 'rg-vant-np3-t4-usaz'
param resourceGroupLocation = 'usgovarizona'
param cacheSKU = 'Standard'
param cacheFamily = 'C'
param cacheCapacity = 1
param cacheMinimumTlsVersion = '1.2'
param enableNonSslPort = false
param maxmemorypolicy = 'volatile-lru'
param maxmemoryreserved = '10'
param notifykeyspaceevents = 'gxE'
// param rdbbackupenabled = true
// param rdbstorageconnectionstring = 'DefaultEndpointsProtocol=https;AccountName=storageaccountname;AccountKey=storageaccountkey;EndpointSuffix=core.usgovcloudapi.net'
// param rdbbackupfrequency = '1h' 
param hashmaxziplistentries = 512
param hashmaxziplistvalue = 64
param setmaxintsetentries = 512
param zsetmaxziplistentries = 128
param zsetmaxziplistalue = 64
param databases = 1
// param builtInAccessPolicyName = 'Data Owner'
// param builtInAccessPolicyAssignmentName = 'Data Owner'
// param builtInAccessPolicyAssignmentObjectId = '00000000-0000-0000-0000-000000000000'
// param builtInAccessPolicyAssignmentObjectAlias = 'DataOwner'
param tags = {
  'Group Name': ''
  'Application Name': 'Vantage'
  'Cost Center': ''
  'Deployed By': 'geovanny.urgiles@ibm.com'
  'Service Level': ''
  'Internal Owner': ''
  'Support Contact': ''
  'Managed Services': ''
  'Managed Service Type': ''
  'Change Control': ''
}
param publicnetworkaccess = 'Enabled'
