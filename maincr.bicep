// Define the module parameters
param cacheName string = 'redis cache'
param resourceGroupLocation string
@description('Specify the pricing tier of the new Azure Redis cache.')
@allowed([
  'Basic'
  'Standard'
  'Premium'
])
param cacheSKU string = 'Standard'
@description('Specify the family for the sku. C = Basic/Standard, P = Premium.')
@allowed([
  'C'
  'P'
])
param cacheFamily string = 'C'
@description('Specify the size of the new Azure Redis cache instance. Valid values: for C (Basic/Standard) family (0, 1, 2, 3, 4, 5, 6), for P (Premium) family (1, 2, 3, 4, 5)')
@allowed([
  0
  1
  2
  3
  4
  5
  6
])
param cacheCapacity int = 1 // The size of the cache to be created
param cacheMinimumTlsVersion string = '1.2' // The minimum TLS version required for the cache to be accessed
param enableNonSslPort bool = false // Enable or disable non-SSL port
param maxmemorypolicy string = 'volatile-lru' // It removes the least recently used key out of all the keys with an expiration set.
param maxmemoryreserved string = '10' // The amount of memory in MB that is reserved for non- cache operations.Minimum and maximum values 10% and 60%
param notifykeyspaceevents string = 'gxE' // g: Generic commands, x: Expired events, e: Evicted events
param rdbbackupenabled bool = true // Enable or disable RDB backup
param rdbstorageconnectionstring string // The connection string of the storage account where the RDB backup will be stored
param rdbbackupfrequency string = '1h' // The frequency at which the RDB backup will be taken
param hashmaxziplistentries int = 512 // The maximum number of entries that can be stored in a hash before it is converted into a ziplist
param hashmaxziplistvalue int = 64 // The maximum value size that can be stored in a hash before it is converted into a ziplist
param setmaxintsetentries int = 512 // The maximum number of entries that can be stored in a set before it is converted into an intset
param zsetmaxziplistentries int = 128 // The maximum number of entries that can be stored in a sorted set before it is converted into a ziplist
param zsetmaxziplistalue int = 64 // The maximum value size that can be stored in a sorted set before it is converted into a ziplist
param databases int = 1 // The number of databases to be created
@description('Specify name of Built-In access policy to use as assignment.')
@allowed([
  'Data Owner'
  'Data Contributor'
  'Data Reader'
])
param builtInAccessPolicyName string
param builtInAccessPolicyAssignmentName string
param builtInAccessPolicyAssignmentObjectId string
param builtInAccessPolicyAssignmentObjectAlias string
param tags object
param publicnetworkaccess string

module cache 'cacheredis.bicep' = {
  name: 'cache'
  params: {
    cacheName: cacheName
    resourceGroupLocation: resourceGroupLocation
    cacheSKU: cacheSKU
    cacheFamily: cacheFamily
    cacheCapacity: cacheCapacity
    cacheMinimumTlsVersion: cacheMinimumTlsVersion
    enableNonSslPort: enableNonSslPort
    maxmemorypolicy: maxmemorypolicy
    maxmemoryreserved: maxmemoryreserved
    notifykeyspaceevents: notifykeyspaceevents
    rdbbackupenabled: rdbbackupenabled
    rdbstorageconnectionstring: rdbstorageconnectionstring
    rdbbackupfrequency: rdbbackupfrequency
    hashmaxziplistentries: hashmaxziplistentries
    hashmaxziplistvalue: hashmaxziplistvalue
    setmaxintsetentries: setmaxintsetentries
    zsetmaxziplistentries: zsetmaxziplistentries
    zsetmaxziplistvalue: zsetmaxziplistalue
    databases: databases
    builtInAccessPolicyName: builtInAccessPolicyName
    builtInAccessPolicyAssignmentName: builtInAccessPolicyAssignmentName
    builtInAccessPolicyAssignmentObjectId: builtInAccessPolicyAssignmentObjectId
    builtInAccessPolicyAssignmentObjectAlias: builtInAccessPolicyAssignmentObjectAlias
    tags: tags
    publicnetworkaccess: publicnetworkaccess
  }
}
