part of destiny2_api.api;

@Entity()
class GroupsV2GroupType {
  /// The underlying value of this enum member.
  final int value;

  const GroupsV2GroupType._internal(this.value);

  static const GroupsV2GroupType general = const GroupsV2GroupType._internal(0);
  static const GroupsV2GroupType clan = const GroupsV2GroupType._internal(1);
}

class GroupsV2GroupTypeTypeTransformer extends TypeTransformer<GroupsV2GroupType> {

  @override
  dynamic encode(GroupsV2GroupType data) {
    return data.value;
  }

  @override
  GroupsV2GroupType decode(dynamic data) {
    switch (data) {
      case 0: return GroupsV2GroupType.general;
      case 1: return GroupsV2GroupType.clan;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

