part of destiny2_api.api;

@Entity()
class DestinyRequestsDestinyItemTransferRequest {
  
  @Property(name: 'itemReferenceHash')
  int itemReferenceHash = null;
  

  @Property(name: 'stackSize')
  int stackSize = null;
  

  @Property(name: 'transferToVault')
  bool transferToVault = null;
  

  @Property(name: 'itemId')
  int itemId = null;
  

  @Property(name: 'characterId')
  int characterId = null;
  

  @Property(name: 'membershipType')
  BungieMembershipType membershipType = null;
  
  DestinyRequestsDestinyItemTransferRequest();

  @override
  String toString()  {
    return 'DestinyRequestsDestinyItemTransferRequest[itemReferenceHash=$itemReferenceHash, stackSize=$stackSize, transferToVault=$transferToVault, itemId=$itemId, characterId=$characterId, membershipType=$membershipType, ]';
  }
}

