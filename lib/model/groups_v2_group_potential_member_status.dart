part of destiny2_api.api;

@Entity()
class GroupsV2GroupPotentialMemberStatus {
  /// The underlying value of this enum member.
  final int value;

  const GroupsV2GroupPotentialMemberStatus._internal(this.value);

  static const GroupsV2GroupPotentialMemberStatus none = const GroupsV2GroupPotentialMemberStatus._internal(0);
  static const GroupsV2GroupPotentialMemberStatus applicant = const GroupsV2GroupPotentialMemberStatus._internal(1);
  static const GroupsV2GroupPotentialMemberStatus invitee = const GroupsV2GroupPotentialMemberStatus._internal(2);
}

class GroupsV2GroupPotentialMemberStatusTypeTransformer extends TypeTransformer<GroupsV2GroupPotentialMemberStatus> {

  @override
  dynamic encode(GroupsV2GroupPotentialMemberStatus data) {
    return data.value;
  }

  @override
  GroupsV2GroupPotentialMemberStatus decode(dynamic data) {
    switch (data) {
      case 0: return GroupsV2GroupPotentialMemberStatus.none;
      case 1: return GroupsV2GroupPotentialMemberStatus.applicant;
      case 2: return GroupsV2GroupPotentialMemberStatus.invitee;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

