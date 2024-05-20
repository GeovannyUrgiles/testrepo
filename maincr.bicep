targetScope = 'subscription'
param date string = utcNow()

param cacheServiceName string
param cacheServiceResourceGroup string
param resourceGroupLocation string
param cacheSKU string
param cacheFamily string
param cacheCapacity int
param cacheMinimumTlsVersion string
param enableNonSslPort bool
param maxmemorypolicy string
param maxmemoryreserved string
param notifykeyspaceevents string
// param rdbbackupenabled bool
// param rdbstorageconnectionstring
// param rdbbackupfrequency string
param hashmaxziplistentries int
param hashmaxziplistvalue int
param setmaxintsetentries int
param zsetmaxziplistentries int
param zsetmaxziplistalue int
param databases int
// param builtInAccessPolicyName string
// param builtInAccessPolicyAssignmentName string
// param builtInAccessPolicyAssignmentObjectId string
// param builtInAccessPolicyAssignmentObjectAlias string
param tags object
param publicnetworkaccess string

module cacheredis './cacheredis.bicep' = {
  name: '${cacheServiceName}-deployment-${date}'
  scope: resourceGroup(cacheServiceResourceGroup)
  params: {
    cacheServiceName: cacheServiceName
    resourceGroupLocation: resourceGroupLocation
    cacheSKU: cacheSKU
    cacheFamily: cacheFamily
    cacheCapacity: cacheCapacity
    cacheMinimumTlsVersion: cacheMinimumTlsVersion
    enableNonSslPort: enableNonSslPort
    maxmemorypolicy: maxmemorypolicy
    maxmemoryreserved: maxmemoryreserved
    notifykeyspaceevents: notifykeyspaceevents
    // rdbbackupenabled: rdbbackupenabled
    // rdbstorageconnectionstring: rdbstorageconnectionstring
    // rdbbackupfrequency: rdbbackupfrequency
    hashmaxziplistentries: hashmaxziplistentries
    hashmaxziplistvalue: hashmaxziplistvalue
    setmaxintsetentries: setmaxintsetentries
    zsetmaxziplistentries: zsetmaxziplistentries
    zsetmaxziplistvalue: zsetmaxziplistalue
    databases: databases
    // builtInAccessPolicyName: builtInAccessPolicyName
    // builtInAccessPolicyAssignmentName: builtInAccessPolicyAssignmentName
    // builtInAccessPolicyAssignmentObjectId: builtInAccessPolicyAssignmentObjectId
    // builtInAccessPolicyAssignmentObjectAlias: builtInAccessPolicyAssignmentObjectAlias
    tags: tags
    publicnetworkaccess: publicnetworkaccess
  }
}
