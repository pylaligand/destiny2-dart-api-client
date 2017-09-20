part of destiny2_api.api;

@Entity()
class DestinyRequestsActionsDestinyItemStateRequest {
  
  @Property(name: 'state')
  bool state = null;
  

  @Property(name: 'itemId')
  int itemId = null;
  

  @Property(name: 'characterId')
  int characterId = null;
  

  @Property(name: 'membershipType')
  BungieMembershipType membershipType = null;
  
  DestinyRequestsActionsDestinyItemStateRequest();

  @override
  String toString()  {
    return 'DestinyRequestsActionsDestinyItemStateRequest[state=$state, itemId=$itemId, characterId=$characterId, membershipType=$membershipType, ]';
  }
}

