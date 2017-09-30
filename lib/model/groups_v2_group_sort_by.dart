part of destiny2_api.api;

@Entity()
class GroupsV2GroupSortBy {
  /// The underlying value of this enum member.
  final int value;

  const GroupsV2GroupSortBy._internal(this.value);

  static const GroupsV2GroupSortBy name = const GroupsV2GroupSortBy._internal(0);
  static const GroupsV2GroupSortBy date = const GroupsV2GroupSortBy._internal(1);
  static const GroupsV2GroupSortBy popularity = const GroupsV2GroupSortBy._internal(2);
  static const GroupsV2GroupSortBy id = const GroupsV2GroupSortBy._internal(3);
}

class GroupsV2GroupSortByTypeTransformer extends TypeTransformer<GroupsV2GroupSortBy> {

  @override
  dynamic encode(GroupsV2GroupSortBy data) {
    return data.value;
  }

  @override
  GroupsV2GroupSortBy decode(dynamic data) {
    switch (data) {
      case 0: return GroupsV2GroupSortBy.name;
      case 1: return GroupsV2GroupSortBy.date;
      case 2: return GroupsV2GroupSortBy.popularity;
      case 3: return GroupsV2GroupSortBy.id;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

