part of destiny2_api.api;

@Entity()
class DestinyRequestsActionsDestinyActionRequest {
  
  @Property(name: 'membershipType')
  BungieMembershipType membershipType = null;
  
  DestinyRequestsActionsDestinyActionRequest();

  @override
  String toString()  {
    return 'DestinyRequestsActionsDestinyActionRequest[membershipType=$membershipType, ]';
  }
}

