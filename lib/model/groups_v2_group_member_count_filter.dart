part of destiny2_api.api;

@Entity()
class GroupsV2GroupMemberCountFilter {
  /// The underlying value of this enum member.
  final int value;

  const GroupsV2GroupMemberCountFilter._internal(this.value);

  static const GroupsV2GroupMemberCountFilter all = const GroupsV2GroupMemberCountFilter._internal(0);
  static const GroupsV2GroupMemberCountFilter oneToTen = const GroupsV2GroupMemberCountFilter._internal(1);
  static const GroupsV2GroupMemberCountFilter elevenToOneHundred = const GroupsV2GroupMemberCountFilter._internal(2);
  static const GroupsV2GroupMemberCountFilter greaterThanOneHundred = const GroupsV2GroupMemberCountFilter._internal(3);
}

class GroupsV2GroupMemberCountFilterTypeTransformer extends TypeTransformer<GroupsV2GroupMemberCountFilter> {

  @override
  dynamic encode(GroupsV2GroupMemberCountFilter data) {
    return data.value;
  }

  @override
  GroupsV2GroupMemberCountFilter decode(dynamic data) {
    switch (data) {
      case 0: return GroupsV2GroupMemberCountFilter.all;
      case 1: return GroupsV2GroupMemberCountFilter.oneToTen;
      case 2: return GroupsV2GroupMemberCountFilter.elevenToOneHundred;
      case 3: return GroupsV2GroupMemberCountFilter.greaterThanOneHundred;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

