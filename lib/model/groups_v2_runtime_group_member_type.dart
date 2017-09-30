part of destiny2_api.api;

@Entity()
class GroupsV2RuntimeGroupMemberType {
  /// The underlying value of this enum member.
  final int value;

  const GroupsV2RuntimeGroupMemberType._internal(this.value);

  /// The member levels used by all V2 Groups API. Individual group types use their own mappings in their native storage (general uses BnetDbGroupMemberType and D2 clans use ClanMemberLevel), but they are all translated to this in the runtime api. These runtime values should NEVER be stored anywhere, so the values can be changed as necessary.
  static const GroupsV2RuntimeGroupMemberType none = const GroupsV2RuntimeGroupMemberType._internal(0);
  /// The member levels used by all V2 Groups API. Individual group types use their own mappings in their native storage (general uses BnetDbGroupMemberType and D2 clans use ClanMemberLevel), but they are all translated to this in the runtime api. These runtime values should NEVER be stored anywhere, so the values can be changed as necessary.
  static const GroupsV2RuntimeGroupMemberType beginner = const GroupsV2RuntimeGroupMemberType._internal(1);
  /// The member levels used by all V2 Groups API. Individual group types use their own mappings in their native storage (general uses BnetDbGroupMemberType and D2 clans use ClanMemberLevel), but they are all translated to this in the runtime api. These runtime values should NEVER be stored anywhere, so the values can be changed as necessary.
  static const GroupsV2RuntimeGroupMemberType member = const GroupsV2RuntimeGroupMemberType._internal(2);
  /// The member levels used by all V2 Groups API. Individual group types use their own mappings in their native storage (general uses BnetDbGroupMemberType and D2 clans use ClanMemberLevel), but they are all translated to this in the runtime api. These runtime values should NEVER be stored anywhere, so the values can be changed as necessary.
  static const GroupsV2RuntimeGroupMemberType admin = const GroupsV2RuntimeGroupMemberType._internal(3);
  /// The member levels used by all V2 Groups API. Individual group types use their own mappings in their native storage (general uses BnetDbGroupMemberType and D2 clans use ClanMemberLevel), but they are all translated to this in the runtime api. These runtime values should NEVER be stored anywhere, so the values can be changed as necessary.
  static const GroupsV2RuntimeGroupMemberType actingFounder = const GroupsV2RuntimeGroupMemberType._internal(4);
  /// The member levels used by all V2 Groups API. Individual group types use their own mappings in their native storage (general uses BnetDbGroupMemberType and D2 clans use ClanMemberLevel), but they are all translated to this in the runtime api. These runtime values should NEVER be stored anywhere, so the values can be changed as necessary.
  static const GroupsV2RuntimeGroupMemberType founder = const GroupsV2RuntimeGroupMemberType._internal(5);
}

class GroupsV2RuntimeGroupMemberTypeTypeTransformer extends TypeTransformer<GroupsV2RuntimeGroupMemberType> {

  @override
  dynamic encode(GroupsV2RuntimeGroupMemberType data) {
    return data.value;
  }

  @override
  GroupsV2RuntimeGroupMemberType decode(dynamic data) {
    switch (data) {
      case 0: return GroupsV2RuntimeGroupMemberType.none;
      case 1: return GroupsV2RuntimeGroupMemberType.beginner;
      case 2: return GroupsV2RuntimeGroupMemberType.member;
      case 3: return GroupsV2RuntimeGroupMemberType.admin;
      case 4: return GroupsV2RuntimeGroupMemberType.actingFounder;
      case 5: return GroupsV2RuntimeGroupMemberType.founder;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

