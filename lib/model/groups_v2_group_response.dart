part of destiny2_api.api;

@Entity()
class GroupsV2GroupResponse {
  
  @Property(name: 'detail')
  GroupsV2GroupV2 detail = null;
  

  @Property(name: 'founder')
  GroupsV2GroupMember founder = null;
  

  @Property(name: 'alliedIds')
  List<int> alliedIds = [];
  

  @Property(name: 'parentGroup')
  GroupsV2GroupV2 parentGroup = null;
  

  @Property(name: 'allianceStatus')
  GroupsV2GroupAllianceStatus allianceStatus = null;
  

  @Property(name: 'groupJoinInviteCount')
  int groupJoinInviteCount = null;
  
/* This property will be populated if the authenticated user is a member of the group. Note that because of account linking, a user can sometimes be part of a clan more than once. As such, this returns the highest member type available. */
  @Property(name: 'currentUserMemberMap')
  Map<String, GroupsV2GroupMember> currentUserMemberMap = {};
  
/* This property will be populated if the authenticated user is an applicant or has an outstanding invitation to join. Note that because of account linking, a user can sometimes be part of a clan more than once. */
  @Property(name: 'currentUserPotentialMemberMap')
  Map<String, GroupsV2GroupPotentialMember> currentUserPotentialMemberMap = {};
  
  GroupsV2GroupResponse();

  @override
  String toString()  {
    return 'GroupsV2GroupResponse[detail=$detail, founder=$founder, alliedIds=$alliedIds, parentGroup=$parentGroup, allianceStatus=$allianceStatus, groupJoinInviteCount=$groupJoinInviteCount, currentUserMemberMap=$currentUserMemberMap, currentUserPotentialMemberMap=$currentUserPotentialMemberMap, ]';
  }
}

