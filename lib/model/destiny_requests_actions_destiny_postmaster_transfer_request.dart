part of destiny2_api.api;

@Entity()
class DestinyRequestsActionsDestinyPostmasterTransferRequest {
  
  @Property(name: 'itemReferenceHash')
  int itemReferenceHash = null;
  

  @Property(name: 'stackSize')
  int stackSize = null;
  

  @Property(name: 'itemId')
  int itemId = null;
  

  @Property(name: 'characterId')
  int characterId = null;
  

  @Property(name: 'membershipType')
  BungieMembershipType membershipType = null;
  
  DestinyRequestsActionsDestinyPostmasterTransferRequest();

  @override
  String toString()  {
    return 'DestinyRequestsActionsDestinyPostmasterTransferRequest[itemReferenceHash=$itemReferenceHash, stackSize=$stackSize, itemId=$itemId, characterId=$characterId, membershipType=$membershipType, ]';
  }
}

