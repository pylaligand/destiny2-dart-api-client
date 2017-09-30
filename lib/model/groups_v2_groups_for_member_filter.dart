part of destiny2_api.api;

@Entity()
class GroupsV2GroupsForMemberFilter {
  /// The underlying value of this enum member.
  final int value;

  const GroupsV2GroupsForMemberFilter._internal(this.value);

  static const GroupsV2GroupsForMemberFilter all = const GroupsV2GroupsForMemberFilter._internal(0);
  static const GroupsV2GroupsForMemberFilter founded = const GroupsV2GroupsForMemberFilter._internal(1);
  static const GroupsV2GroupsForMemberFilter nonFounded = const GroupsV2GroupsForMemberFilter._internal(2);
}

class GroupsV2GroupsForMemberFilterTypeTransformer extends TypeTransformer<GroupsV2GroupsForMemberFilter> {

  @override
  dynamic encode(GroupsV2GroupsForMemberFilter data) {
    return data.value;
  }

  @override
  GroupsV2GroupsForMemberFilter decode(dynamic data) {
    switch (data) {
      case 0: return GroupsV2GroupsForMemberFilter.all;
      case 1: return GroupsV2GroupsForMemberFilter.founded;
      case 2: return GroupsV2GroupsForMemberFilter.nonFounded;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

