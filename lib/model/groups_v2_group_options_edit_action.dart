part of destiny2_api.api;

@Entity()
class GroupsV2GroupOptionsEditAction {
  /* Minimum Member Level allowed to invite new members to group  Always Allowed: Founder, Acting Founder  True means admins have this power, false means they don't  Default is false for clans, true for groups. */
  @Property(name: 'InvitePermissionOverride')
  bool invitePermissionOverride = null;
  
/* Minimum Member Level allowed to update group culture  Always Allowed: Founder, Acting Founder  True means admins have this power, false means they don't  Default is false for clans, true for groups. */
  @Property(name: 'UpdateCulturePermissionOverride')
  bool updateCulturePermissionOverride = null;
  
/* Minimum Member Level allowed to host guided games  Always Allowed: Founder, Acting Founder, Admin  Allowed Overrides: None, Member, Beginner  Default is Member for clans, None for groups, although this means nothing for groups. */
  @Property(name: 'HostGuidedGamePermissionOverride')
  int hostGuidedGamePermissionOverride = null;
  //enum hostGuidedGamePermissionOverrideEnum {  0,  1,  2,  };
/* Minimum Member Level allowed to update banner  Always Allowed: Founder, Acting Founder  True means admins have this power, false means they don't  Default is false for clans, true for groups. */
  @Property(name: 'UpdateBannerPermissionOverride')
  bool updateBannerPermissionOverride = null;
  
/* Level to join a member at when accepting an invite, application, or joining an open clan  Default is Beginner. */
  @Property(name: 'JoinLevel')
  int joinLevel = null;
  //enum joinLevelEnum {  0,  1,  2,  3,  4,  5,  };
  GroupsV2GroupOptionsEditAction();

  @override
  String toString()  {
    return 'GroupsV2GroupOptionsEditAction[invitePermissionOverride=$invitePermissionOverride, updateCulturePermissionOverride=$updateCulturePermissionOverride, hostGuidedGamePermissionOverride=$hostGuidedGamePermissionOverride, updateBannerPermissionOverride=$updateBannerPermissionOverride, joinLevel=$joinLevel, ]';
  }
}

