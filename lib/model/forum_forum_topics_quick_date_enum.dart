part of destiny2_api.api;

@Entity()
class ForumForumTopicsQuickDateEnum {
  /// The underlying value of this enum member.
  final int value;

  const ForumForumTopicsQuickDateEnum._internal(this.value);

  static const ForumForumTopicsQuickDateEnum all = const ForumForumTopicsQuickDateEnum._internal(0);
  static const ForumForumTopicsQuickDateEnum lastYear = const ForumForumTopicsQuickDateEnum._internal(1);
  static const ForumForumTopicsQuickDateEnum lastMonth = const ForumForumTopicsQuickDateEnum._internal(2);
  static const ForumForumTopicsQuickDateEnum lastWeek = const ForumForumTopicsQuickDateEnum._internal(3);
  static const ForumForumTopicsQuickDateEnum lastDay = const ForumForumTopicsQuickDateEnum._internal(4);
}

class ForumForumTopicsQuickDateEnumTypeTransformer extends TypeTransformer<ForumForumTopicsQuickDateEnum> {

  @override
  dynamic encode(ForumForumTopicsQuickDateEnum data) {
    return data.value;
  }

  @override
  ForumForumTopicsQuickDateEnum decode(dynamic data) {
    switch (data) {
      case 0: return ForumForumTopicsQuickDateEnum.all;
      case 1: return ForumForumTopicsQuickDateEnum.lastYear;
      case 2: return ForumForumTopicsQuickDateEnum.lastMonth;
      case 3: return ForumForumTopicsQuickDateEnum.lastWeek;
      case 4: return ForumForumTopicsQuickDateEnum.lastDay;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

