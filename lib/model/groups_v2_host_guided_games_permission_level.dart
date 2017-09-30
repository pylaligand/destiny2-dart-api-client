part of destiny2_api.api;

@Entity()
class GroupsV2HostGuidedGamesPermissionLevel {
  /// The underlying value of this enum member.
  final int value;

  const GroupsV2HostGuidedGamesPermissionLevel._internal(this.value);

  /// Used for setting the guided game permission level override (admins and founders can always host guided games).
  static const GroupsV2HostGuidedGamesPermissionLevel none = const GroupsV2HostGuidedGamesPermissionLevel._internal(0);
  /// Used for setting the guided game permission level override (admins and founders can always host guided games).
  static const GroupsV2HostGuidedGamesPermissionLevel beginner = const GroupsV2HostGuidedGamesPermissionLevel._internal(1);
  /// Used for setting the guided game permission level override (admins and founders can always host guided games).
  static const GroupsV2HostGuidedGamesPermissionLevel member = const GroupsV2HostGuidedGamesPermissionLevel._internal(2);
}

class GroupsV2HostGuidedGamesPermissionLevelTypeTransformer extends TypeTransformer<GroupsV2HostGuidedGamesPermissionLevel> {

  @override
  dynamic encode(GroupsV2HostGuidedGamesPermissionLevel data) {
    return data.value;
  }

  @override
  GroupsV2HostGuidedGamesPermissionLevel decode(dynamic data) {
    switch (data) {
      case 0: return GroupsV2HostGuidedGamesPermissionLevel.none;
      case 1: return GroupsV2HostGuidedGamesPermissionLevel.beginner;
      case 2: return GroupsV2HostGuidedGamesPermissionLevel.member;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

