part of destiny2_api.api;

@Entity()
class ForumForumTopicsSortEnum {
  /// The underlying value of this enum member.
  final int value;

  const ForumForumTopicsSortEnum._internal(this.value);

  static const ForumForumTopicsSortEnum default_ = const ForumForumTopicsSortEnum._internal(0);
  static const ForumForumTopicsSortEnum lastReplied = const ForumForumTopicsSortEnum._internal(1);
  static const ForumForumTopicsSortEnum mostReplied = const ForumForumTopicsSortEnum._internal(2);
  static const ForumForumTopicsSortEnum popularity = const ForumForumTopicsSortEnum._internal(3);
  static const ForumForumTopicsSortEnum controversiality = const ForumForumTopicsSortEnum._internal(4);
  static const ForumForumTopicsSortEnum liked = const ForumForumTopicsSortEnum._internal(5);
  static const ForumForumTopicsSortEnum highestRated = const ForumForumTopicsSortEnum._internal(6);
  static const ForumForumTopicsSortEnum mostUpvoted = const ForumForumTopicsSortEnum._internal(7);
}

class ForumForumTopicsSortEnumTypeTransformer extends TypeTransformer<ForumForumTopicsSortEnum> {

  @override
  dynamic encode(ForumForumTopicsSortEnum data) {
    return data.value;
  }

  @override
  ForumForumTopicsSortEnum decode(dynamic data) {
    switch (data) {
      case 0: return ForumForumTopicsSortEnum.default_;
      case 1: return ForumForumTopicsSortEnum.lastReplied;
      case 2: return ForumForumTopicsSortEnum.mostReplied;
      case 3: return ForumForumTopicsSortEnum.popularity;
      case 4: return ForumForumTopicsSortEnum.controversiality;
      case 5: return ForumForumTopicsSortEnum.liked;
      case 6: return ForumForumTopicsSortEnum.highestRated;
      case 7: return ForumForumTopicsSortEnum.mostUpvoted;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

