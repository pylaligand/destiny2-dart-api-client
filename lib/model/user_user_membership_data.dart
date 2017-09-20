part of destiny2_api.api;

@Entity()
class UserUserMembershipData {
  /* this allows you to see destiny memberships that are visible and linked to this account (regardless of whether or not they have characters on the world server) */
  @Property(name: 'destinyMemberships')
  List<UserUserInfoCard> destinyMemberships = [];
  

  @Property(name: 'bungieNetUser')
  UserGeneralUser bungieNetUser = null;
  
  UserUserMembershipData();

  @override
  String toString()  {
    return 'UserUserMembershipData[destinyMemberships=$destinyMemberships, bungieNetUser=$bungieNetUser, ]';
  }
}

