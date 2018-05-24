part of destiny2_api.api;

@Entity()
class DestinyRequestsActionsDestinyInsertPlugsActionRequest {
  /* Action token provided by the AwaGetActionToken API call. */
  @Property(name: 'actionToken')
  String actionToken = null;
  
/* The instance ID of the item having a plug inserted. Only instanced items can have sockets. */
  @Property(name: 'itemInstanceId')
  int itemInstanceId = null;
  
/* The plugs being inserted. */
  @Property(name: 'plug')
  DestinyRequestsActionsDestinyInsertPlugsRequestEntry plug = null;
  

  @Property(name: 'characterId')
  int characterId = null;
  

  @Property(name: 'membershipType')
  BungieMembershipType membershipType = null;
  
  DestinyRequestsActionsDestinyInsertPlugsActionRequest();

  @override
  String toString()  {
    return 'DestinyRequestsActionsDestinyInsertPlugsActionRequest[actionToken=$actionToken, itemInstanceId=$itemInstanceId, plug=$plug, characterId=$characterId, membershipType=$membershipType, ]';
  }
}

