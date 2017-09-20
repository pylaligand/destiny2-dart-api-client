part of destiny2_api.api;

@Entity()
class DestinyRequestsActionsDestinyCharacterActionRequest {
  
  @Property(name: 'characterId')
  int characterId = null;
  

  @Property(name: 'membershipType')
  BungieMembershipType membershipType = null;
  
  DestinyRequestsActionsDestinyCharacterActionRequest();

  @override
  String toString()  {
    return 'DestinyRequestsActionsDestinyCharacterActionRequest[characterId=$characterId, membershipType=$membershipType, ]';
  }
}

