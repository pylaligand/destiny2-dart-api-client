part of destiny2_api.api;

@Entity()
class ForumForumTopicsCategoryFiltersEnum {
  /// The underlying value of this enum member.
  final int value;

  const ForumForumTopicsCategoryFiltersEnum._internal(this.value);

  static const ForumForumTopicsCategoryFiltersEnum none = const ForumForumTopicsCategoryFiltersEnum._internal(0);
  static const ForumForumTopicsCategoryFiltersEnum links = const ForumForumTopicsCategoryFiltersEnum._internal(1);
  static const ForumForumTopicsCategoryFiltersEnum questions = const ForumForumTopicsCategoryFiltersEnum._internal(2);
  static const ForumForumTopicsCategoryFiltersEnum answeredQuestions = const ForumForumTopicsCategoryFiltersEnum._internal(4);
  static const ForumForumTopicsCategoryFiltersEnum media = const ForumForumTopicsCategoryFiltersEnum._internal(8);
  static const ForumForumTopicsCategoryFiltersEnum textOnly = const ForumForumTopicsCategoryFiltersEnum._internal(16);
  static const ForumForumTopicsCategoryFiltersEnum announcement = const ForumForumTopicsCategoryFiltersEnum._internal(32);
  static const ForumForumTopicsCategoryFiltersEnum bungieOfficial = const ForumForumTopicsCategoryFiltersEnum._internal(64);
  static const ForumForumTopicsCategoryFiltersEnum polls = const ForumForumTopicsCategoryFiltersEnum._internal(128);
}

class ForumForumTopicsCategoryFiltersEnumTypeTransformer extends TypeTransformer<ForumForumTopicsCategoryFiltersEnum> {

  @override
  dynamic encode(ForumForumTopicsCategoryFiltersEnum data) {
    return data.value;
  }

  @override
  ForumForumTopicsCategoryFiltersEnum decode(dynamic data) {
    switch (data) {
      case 0: return ForumForumTopicsCategoryFiltersEnum.none;
      case 1: return ForumForumTopicsCategoryFiltersEnum.links;
      case 2: return ForumForumTopicsCategoryFiltersEnum.questions;
      case 4: return ForumForumTopicsCategoryFiltersEnum.answeredQuestions;
      case 8: return ForumForumTopicsCategoryFiltersEnum.media;
      case 16: return ForumForumTopicsCategoryFiltersEnum.textOnly;
      case 32: return ForumForumTopicsCategoryFiltersEnum.announcement;
      case 64: return ForumForumTopicsCategoryFiltersEnum.bungieOfficial;
      case 128: return ForumForumTopicsCategoryFiltersEnum.polls;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

