part of destiny2_api.api;

@Entity()
class GroupsV2GroupDateRange {
  /// The underlying value of this enum member.
  final int value;

  const GroupsV2GroupDateRange._internal(this.value);

  static const GroupsV2GroupDateRange all = const GroupsV2GroupDateRange._internal(0);
  static const GroupsV2GroupDateRange pastDay = const GroupsV2GroupDateRange._internal(1);
  static const GroupsV2GroupDateRange pastWeek = const GroupsV2GroupDateRange._internal(2);
  static const GroupsV2GroupDateRange pastMonth = const GroupsV2GroupDateRange._internal(3);
  static const GroupsV2GroupDateRange pastYear = const GroupsV2GroupDateRange._internal(4);
}

class GroupsV2GroupDateRangeTypeTransformer extends TypeTransformer<GroupsV2GroupDateRange> {

  @override
  dynamic encode(GroupsV2GroupDateRange data) {
    return data.value;
  }

  @override
  GroupsV2GroupDateRange decode(dynamic data) {
    switch (data) {
      case 0: return GroupsV2GroupDateRange.all;
      case 1: return GroupsV2GroupDateRange.pastDay;
      case 2: return GroupsV2GroupDateRange.pastWeek;
      case 3: return GroupsV2GroupDateRange.pastMonth;
      case 4: return GroupsV2GroupDateRange.pastYear;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

