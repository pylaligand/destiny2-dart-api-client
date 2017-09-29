part of destiny2_api.api;

@Entity()
class GroupsV2GroupHomepage {
  /// The underlying value of this enum member.
  final int value;

  const GroupsV2GroupHomepage._internal(this.value);

  static const GroupsV2GroupHomepage wall = const GroupsV2GroupHomepage._internal(0);
  static const GroupsV2GroupHomepage forum = const GroupsV2GroupHomepage._internal(1);
  static const GroupsV2GroupHomepage allianceForum = const GroupsV2GroupHomepage._internal(2);
}

class GroupsV2GroupHomepageTypeTransformer extends TypeTransformer<GroupsV2GroupHomepage> {

  @override
  dynamic encode(GroupsV2GroupHomepage data) {
    return data.value;
  }

  @override
  GroupsV2GroupHomepage decode(dynamic data) {
    switch (data) {
      case 0: return GroupsV2GroupHomepage.wall;
      case 1: return GroupsV2GroupHomepage.forum;
      case 2: return GroupsV2GroupHomepage.allianceForum;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

