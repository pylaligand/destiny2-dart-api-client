part of destiny2_api.api;

@Entity()
class DestinyRequestsActionsDestinyItemSetActionRequest {
  
  @Property(name: 'itemIds')
  List<int> itemIds = [];
  

  @Property(name: 'characterId')
  int characterId = null;
  

  @Property(name: 'membershipType')
  BungieMembershipType membershipType = null;
  
  DestinyRequestsActionsDestinyItemSetActionRequest();

  @override
  String toString()  {
    return 'DestinyRequestsActionsDestinyItemSetActionRequest[itemIds=$itemIds, characterId=$characterId, membershipType=$membershipType, ]';
  }
}

