part of destiny2_api.api;

@Entity()
class GroupsV2GroupPostPublicity {
  /// The underlying value of this enum member.
  final int value;

  const GroupsV2GroupPostPublicity._internal(this.value);

  static const GroupsV2GroupPostPublicity public = const GroupsV2GroupPostPublicity._internal(0);
  static const GroupsV2GroupPostPublicity alliance = const GroupsV2GroupPostPublicity._internal(1);
  static const GroupsV2GroupPostPublicity private = const GroupsV2GroupPostPublicity._internal(2);
}

class GroupsV2GroupPostPublicityTypeTransformer extends TypeTransformer<GroupsV2GroupPostPublicity> {

  @override
  dynamic encode(GroupsV2GroupPostPublicity data) {
    return data.value;
  }

  @override
  GroupsV2GroupPostPublicity decode(dynamic data) {
    switch (data) {
      case 0: return GroupsV2GroupPostPublicity.public;
      case 1: return GroupsV2GroupPostPublicity.alliance;
      case 2: return GroupsV2GroupPostPublicity.private;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

