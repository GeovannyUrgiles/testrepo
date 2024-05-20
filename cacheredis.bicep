param tags object
param cacheServiceName string
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
// param rdbstorageconnectionstring string
// param rdbbackupfrequency string
param hashmaxziplistentries int
param hashmaxziplistvalue int
param setmaxintsetentries int
param zsetmaxziplistentries int
param zsetmaxziplistvalue int
param databases int
// param builtInAccessPolicyName string
// param builtInAccessPolicyAssignmentName string
// param builtInAccessPolicyAssignmentObjectId string
// param builtInAccessPolicyAssignmentObjectAlias string
param publicnetworkaccess string

// Create the Rediscache
resource cacheRedisService 'Microsoft.Cache/redis@2023-08-01' = {
  name: cacheServiceName
  location: resourceGroupLocation
  tags: tags
  properties: {
    publicNetworkAccess: publicnetworkaccess
    enableNonSslPort: enableNonSslPort
    minimumTlsVersion: cacheMinimumTlsVersion
    databases: databases
    sku: {
      capacity: cacheCapacity
      family: cacheFamily
      name: cacheSKU
    }
    redisConfiguration: {
      'aad-enabled': 'true'
      'maxmemory-policy': maxmemorypolicy
      'maxmemory-reserved': maxmemoryreserved
      'notify-keyspace-events': notifykeyspaceevents
      // 'rdb-backup-enabled': rdbbackupenabled
      // 'rdb-storage-connection-string': rdbstorageconnectionstring
      // 'rdb-backup-frequency': rdbbackupfrequency
      'hash-max-ziplist-entries': hashmaxziplistentries
      'hash-max-ziplist-value': hashmaxziplistvalue
      'set-max-intset-entries': setmaxintsetentries
      'zset-max-ziplist-entries': zsetmaxziplistentries
      'zset-max-ziplist-value': zsetmaxziplistvalue
    }
  }
}

// Create the built-in access policy assignment
// resource cacheBuiltInAccessPolicyAssignment 'Microsoft.cache/redis/accessPolicyAssignments@2023-08-01' = {
//   name: builtInAccessPolicyAssignmentName
//   parent: cache
//   properties: {
//     accessPolicyName: builtInAccessPolicyName
//     objectId: builtInAccessPolicyAssignmentObjectId
//     objectIdAlias: builtInAccessPolicyAssignmentObjectAlias
//   }
// }

//Output
output cacheRedisServiceName string = cacheRedisService.name
output cacheRedisResourceId string = cacheRedisService.id
