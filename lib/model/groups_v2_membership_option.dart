part of destiny2_api.api;

@Entity()
class GroupsV2MembershipOption {
  /// The underlying value of this enum member.
  final int value;

  const GroupsV2MembershipOption._internal(this.value);

  static const GroupsV2MembershipOption reviewed = const GroupsV2MembershipOption._internal(0);
  static const GroupsV2MembershipOption open = const GroupsV2MembershipOption._internal(1);
  static const GroupsV2MembershipOption closed = const GroupsV2MembershipOption._internal(2);
}

class GroupsV2MembershipOptionTypeTransformer extends TypeTransformer<GroupsV2MembershipOption> {

  @override
  dynamic encode(GroupsV2MembershipOption data) {
    return data.value;
  }

  @override
  GroupsV2MembershipOption decode(dynamic data) {
    switch (data) {
      case 0: return GroupsV2MembershipOption.reviewed;
      case 1: return GroupsV2MembershipOption.open;
      case 2: return GroupsV2MembershipOption.closed;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

