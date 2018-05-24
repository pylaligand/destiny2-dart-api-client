part of destiny2_api.api;

@Entity()
class DestinyAdvancedAwaAuthorizationResult {
  /* Indication of how the user responded to the request. If the value is \"Approved\" the actionToken will contain the token that can be presented when performing the advanced write action. */
  @Property(name: 'userSelection')
  DestinyAdvancedAwaUserSelection userSelection = null;
  

  @Property(name: 'responseReason')
  DestinyAdvancedAwaResponseReason responseReason = null;
  
/* Message to the app developer to help understand the response. */
  @Property(name: 'developerNote')
  String developerNote = null;
  
/* Credential used to prove the user authorized an advanced write action. */
  @Property(name: 'actionToken')
  String actionToken = null;
  
/* This token may be used to perform the requested action this number of times, at a maximum. If this value is 0, then there is no limit. */
  @Property(name: 'maximumNumberOfUses')
  int maximumNumberOfUses = null;
  
/* Time, UTC, when token expires. */
  @Property(name: 'validUntil')
  DateTime validUntil = null;
  
/* Advanced Write Action Type from the permission request. */
  @Property(name: 'type')
  DestinyAdvancedAwaType type = null;
  
/* MembershipType from the permission request. */
  @Property(name: 'membershipType')
  BungieMembershipType membershipType = null;
  
  DestinyAdvancedAwaAuthorizationResult();

  @override
  String toString()  {
    return 'DestinyAdvancedAwaAuthorizationResult[userSelection=$userSelection, responseReason=$responseReason, developerNote=$developerNote, actionToken=$actionToken, maximumNumberOfUses=$maximumNumberOfUses, validUntil=$validUntil, type=$type, membershipType=$membershipType, ]';
  }
}

