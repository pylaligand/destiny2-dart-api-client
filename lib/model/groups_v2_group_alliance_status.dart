part of destiny2_api.api;

@Entity()
class GroupsV2GroupAllianceStatus {
  /// The underlying value of this enum member.
  final int value;

  const GroupsV2GroupAllianceStatus._internal(this.value);

  static const GroupsV2GroupAllianceStatus unallied = const GroupsV2GroupAllianceStatus._internal(0);
  static const GroupsV2GroupAllianceStatus parent = const GroupsV2GroupAllianceStatus._internal(1);
  static const GroupsV2GroupAllianceStatus child = const GroupsV2GroupAllianceStatus._internal(2);
}

class GroupsV2GroupAllianceStatusTypeTransformer extends TypeTransformer<GroupsV2GroupAllianceStatus> {

  @override
  dynamic encode(GroupsV2GroupAllianceStatus data) {
    return data.value;
  }

  @override
  GroupsV2GroupAllianceStatus decode(dynamic data) {
    switch (data) {
      case 0: return GroupsV2GroupAllianceStatus.unallied;
      case 1: return GroupsV2GroupAllianceStatus.parent;
      case 2: return GroupsV2GroupAllianceStatus.child;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

