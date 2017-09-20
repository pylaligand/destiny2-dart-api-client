part of destiny2_api.api;

@Entity()
class UserUserMembership {
  /* Type of the membership. */
  @Property(name: 'membershipType')
  Object membershipType = null;
  
/* Membership ID as they user is known in the Accounts service */
  @Property(name: 'membershipId')
  int membershipId = null;
  
/* Display Name the player has chosen for themselves. The display name is optional when the data type is used as input to a platform API. */
  @Property(name: 'displayName')
  String displayName = null;
  
  UserUserMembership();

  @override
  String toString()  {
    return 'UserUserMembership[membershipType=$membershipType, membershipId=$membershipId, displayName=$displayName, ]';
  }
}

