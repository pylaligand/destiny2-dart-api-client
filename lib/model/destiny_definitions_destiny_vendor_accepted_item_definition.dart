part of destiny2_api.api;

@Entity()
class DestinyDefinitionsDestinyVendorAcceptedItemDefinition {
  /* The \"source\" bucket for a transfer. When a user wants to transfer an item, the appropriate DestinyVendorDefinition's acceptedItems property is evaluated, looking for an entry where acceptedInventoryBucketHash matches the bucket that the item being transferred is currently located. If it exists, the item will be transferred into whatever bucket is defined by destinationInventoryBucketHash. */
  @Property(name: 'acceptedInventoryBucketHash')
  int acceptedInventoryBucketHash = null;
  
/* This is the bucket where the item being transferred will be put, given that it was being transferred *from* the bucket defined in acceptedInventoryBucketHash. */
  @Property(name: 'destinationInventoryBucketHash')
  int destinationInventoryBucketHash = null;
  
  DestinyDefinitionsDestinyVendorAcceptedItemDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsDestinyVendorAcceptedItemDefinition[acceptedInventoryBucketHash=$acceptedInventoryBucketHash, destinationInventoryBucketHash=$destinationInventoryBucketHash, ]';
  }
}

