part of destiny2_api.api;

@Entity()
class ForumForumPostPopularity {
  /// The underlying value of this enum member.
  final int value;

  const ForumForumPostPopularity._internal(this.value);

  static const ForumForumPostPopularity empty = const ForumForumPostPopularity._internal(0);
  static const ForumForumPostPopularity default_ = const ForumForumPostPopularity._internal(1);
  static const ForumForumPostPopularity discussed = const ForumForumPostPopularity._internal(2);
  static const ForumForumPostPopularity coolStory = const ForumForumPostPopularity._internal(3);
  static const ForumForumPostPopularity heatingUp = const ForumForumPostPopularity._internal(4);
  static const ForumForumPostPopularity hot = const ForumForumPostPopularity._internal(5);
}

class ForumForumPostPopularityTypeTransformer extends TypeTransformer<ForumForumPostPopularity> {

  @override
  dynamic encode(ForumForumPostPopularity data) {
    return data.value;
  }

  @override
  ForumForumPostPopularity decode(dynamic data) {
    switch (data) {
      case 0: return ForumForumPostPopularity.empty;
      case 1: return ForumForumPostPopularity.default_;
      case 2: return ForumForumPostPopularity.discussed;
      case 3: return ForumForumPostPopularity.coolStory;
      case 4: return ForumForumPostPopularity.heatingUp;
      case 5: return ForumForumPostPopularity.hot;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

