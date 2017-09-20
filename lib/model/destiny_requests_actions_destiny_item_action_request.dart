part of destiny2_api.api;

@Entity()
class DestinyRequestsActionsDestinyItemActionRequest {
  
  @Property(name: 'itemId')
  int itemId = null;
  

  @Property(name: 'characterId')
  int characterId = null;
  

  @Property(name: 'membershipType')
  BungieMembershipType membershipType = null;
  
  DestinyRequestsActionsDestinyItemActionRequest();

  @override
  String toString()  {
    return 'DestinyRequestsActionsDestinyItemActionRequest[itemId=$itemId, characterId=$characterId, membershipType=$membershipType, ]';
  }
}

