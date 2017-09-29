part of destiny2_api.api;

@Entity()
class ForumForumPostCategoryEnums {
  /// The underlying value of this enum member.
  final int value;

  const ForumForumPostCategoryEnums._internal(this.value);

  static const ForumForumPostCategoryEnums none = const ForumForumPostCategoryEnums._internal(0);
  static const ForumForumPostCategoryEnums textOnly = const ForumForumPostCategoryEnums._internal(1);
  static const ForumForumPostCategoryEnums media = const ForumForumPostCategoryEnums._internal(2);
  static const ForumForumPostCategoryEnums link = const ForumForumPostCategoryEnums._internal(4);
  static const ForumForumPostCategoryEnums poll = const ForumForumPostCategoryEnums._internal(8);
  static const ForumForumPostCategoryEnums question = const ForumForumPostCategoryEnums._internal(16);
  static const ForumForumPostCategoryEnums answered = const ForumForumPostCategoryEnums._internal(32);
  static const ForumForumPostCategoryEnums announcement = const ForumForumPostCategoryEnums._internal(64);
  static const ForumForumPostCategoryEnums contentComment = const ForumForumPostCategoryEnums._internal(128);
  static const ForumForumPostCategoryEnums bungieOfficial = const ForumForumPostCategoryEnums._internal(256);
  static const ForumForumPostCategoryEnums ninjaOfficial = const ForumForumPostCategoryEnums._internal(512);
  static const ForumForumPostCategoryEnums recruitment = const ForumForumPostCategoryEnums._internal(1024);
}

class ForumForumPostCategoryEnumsTypeTransformer extends TypeTransformer<ForumForumPostCategoryEnums> {

  @override
  dynamic encode(ForumForumPostCategoryEnums data) {
    return data.value;
  }

  @override
  ForumForumPostCategoryEnums decode(dynamic data) {
    switch (data) {
      case 0: return ForumForumPostCategoryEnums.none;
      case 1: return ForumForumPostCategoryEnums.textOnly;
      case 2: return ForumForumPostCategoryEnums.media;
      case 4: return ForumForumPostCategoryEnums.link;
      case 8: return ForumForumPostCategoryEnums.poll;
      case 16: return ForumForumPostCategoryEnums.question;
      case 32: return ForumForumPostCategoryEnums.answered;
      case 64: return ForumForumPostCategoryEnums.announcement;
      case 128: return ForumForumPostCategoryEnums.contentComment;
      case 256: return ForumForumPostCategoryEnums.bungieOfficial;
      case 512: return ForumForumPostCategoryEnums.ninjaOfficial;
      case 1024: return ForumForumPostCategoryEnums.recruitment;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

