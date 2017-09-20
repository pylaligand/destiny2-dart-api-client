part of destiny2_api.api;

@Entity()
class UserUserInfoCard {
  /* A platform specific additional display name - ex: psn Real Name, bnet Unique Name, etc. */
  @Property(name: 'supplementalDisplayName')
  String supplementalDisplayName = null;
  
/* URL the Icon if available. */
  @Property(name: 'iconPath')
  String iconPath = null;
  
/* Type of the membership. */
  @Property(name: 'membershipType')
  Object membershipType = null;
  
/* Membership ID as they user is known in the Accounts service */
  @Property(name: 'membershipId')
  int membershipId = null;
  
/* Display Name the player has chosen for themselves. The display name is optional when the data type is used as input to a platform API. */
  @Property(name: 'displayName')
  String displayName = null;
  
  UserUserInfoCard();

  @override
  String toString()  {
    return 'UserUserInfoCard[supplementalDisplayName=$supplementalDisplayName, iconPath=$iconPath, membershipType=$membershipType, membershipId=$membershipId, displayName=$displayName, ]';
  }
}

