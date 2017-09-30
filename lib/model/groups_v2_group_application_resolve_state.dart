part of destiny2_api.api;

@Entity()
class GroupsV2GroupApplicationResolveState {
  /// The underlying value of this enum member.
  final int value;

  const GroupsV2GroupApplicationResolveState._internal(this.value);

  static const GroupsV2GroupApplicationResolveState unresolved = const GroupsV2GroupApplicationResolveState._internal(0);
  static const GroupsV2GroupApplicationResolveState accepted = const GroupsV2GroupApplicationResolveState._internal(1);
  static const GroupsV2GroupApplicationResolveState denied = const GroupsV2GroupApplicationResolveState._internal(2);
  static const GroupsV2GroupApplicationResolveState rescinded = const GroupsV2GroupApplicationResolveState._internal(3);
}

class GroupsV2GroupApplicationResolveStateTypeTransformer extends TypeTransformer<GroupsV2GroupApplicationResolveState> {

  @override
  dynamic encode(GroupsV2GroupApplicationResolveState data) {
    return data.value;
  }

  @override
  GroupsV2GroupApplicationResolveState decode(dynamic data) {
    switch (data) {
      case 0: return GroupsV2GroupApplicationResolveState.unresolved;
      case 1: return GroupsV2GroupApplicationResolveState.accepted;
      case 2: return GroupsV2GroupApplicationResolveState.denied;
      case 3: return GroupsV2GroupApplicationResolveState.rescinded;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

