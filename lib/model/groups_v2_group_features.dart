part of destiny2_api.api;

@Entity()
class GroupsV2GroupFeatures {
  
  @Property(name: 'maximumMembers')
  int maximumMembers = null;
  
/* Maximum number of groups of this type a typical membership may join. For example, a user may join about 50 General groups with their Bungie.net account. They may join one clan per Destiny membership. */
  @Property(name: 'maximumMembershipsOfGroupType')
  int maximumMembershipsOfGroupType = null;
  

  @Property(name: 'capabilities')
  GroupsV2Capabilities capabilities = null;
  

  @Property(name: 'membershipTypes')
  List<BungieMembershipType> membershipTypes = [];
  
/* Minimum Member Level allowed to invite new members to group  Always Allowed: Founder, Acting Founder  True means admins have this power, false means they don't  Default is false for clans, true for groups. */
  @Property(name: 'invitePermissionOverride')
  bool invitePermissionOverride = null;
  
/* Minimum Member Level allowed to update group culture  Always Allowed: Founder, Acting Founder  True means admins have this power, false means they don't  Default is false for clans, true for groups. */
  @Property(name: 'updateCulturePermissionOverride')
  bool updateCulturePermissionOverride = null;
  
/* Minimum Member Level allowed to host guided games  Always Allowed: Founder, Acting Founder, Admin  Allowed Overrides: None, Member, Beginner  Default is Member for clans, None for groups, although this means nothing for groups. */
  @Property(name: 'hostGuidedGamePermissionOverride')
  GroupsV2HostGuidedGamesPermissionLevel hostGuidedGamePermissionOverride = null;
  
/* Minimum Member Level allowed to update banner  Always Allowed: Founder, Acting Founder  True means admins have this power, false means they don't  Default is false for clans, true for groups. */
  @Property(name: 'updateBannerPermissionOverride')
  bool updateBannerPermissionOverride = null;
  
/* Level to join a member at when accepting an invite, application, or joining an open clan  Default is Beginner. */
  @Property(name: 'joinLevel')
  GroupsV2RuntimeGroupMemberType joinLevel = null;
  
  GroupsV2GroupFeatures();

  @override
  String toString()  {
    return 'GroupsV2GroupFeatures[maximumMembers=$maximumMembers, maximumMembershipsOfGroupType=$maximumMembershipsOfGroupType, capabilities=$capabilities, membershipTypes=$membershipTypes, invitePermissionOverride=$invitePermissionOverride, updateCulturePermissionOverride=$updateCulturePermissionOverride, hostGuidedGamePermissionOverride=$hostGuidedGamePermissionOverride, updateBannerPermissionOverride=$updateBannerPermissionOverride, joinLevel=$joinLevel, ]';
  }
}

