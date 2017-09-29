part of destiny2_api.api;

@Entity()
class ForumForumFlagsEnum {
  /// The underlying value of this enum member.
  final int value;

  const ForumForumFlagsEnum._internal(this.value);

  static const ForumForumFlagsEnum none = const ForumForumFlagsEnum._internal(0);
  static const ForumForumFlagsEnum bungieStaffPost = const ForumForumFlagsEnum._internal(1);
  static const ForumForumFlagsEnum forumNinjaPost = const ForumForumFlagsEnum._internal(2);
  static const ForumForumFlagsEnum forumMentorPost = const ForumForumFlagsEnum._internal(4);
  static const ForumForumFlagsEnum topicBungieStaffPosted = const ForumForumFlagsEnum._internal(8);
  static const ForumForumFlagsEnum topicBungieVolunteerPosted = const ForumForumFlagsEnum._internal(16);
  static const ForumForumFlagsEnum questionAnsweredByBungie = const ForumForumFlagsEnum._internal(32);
  static const ForumForumFlagsEnum questionAnsweredByNinja = const ForumForumFlagsEnum._internal(64);
  static const ForumForumFlagsEnum communityContent = const ForumForumFlagsEnum._internal(128);
}

class ForumForumFlagsEnumTypeTransformer extends TypeTransformer<ForumForumFlagsEnum> {

  @override
  dynamic encode(ForumForumFlagsEnum data) {
    return data.value;
  }

  @override
  ForumForumFlagsEnum decode(dynamic data) {
    switch (data) {
      case 0: return ForumForumFlagsEnum.none;
      case 1: return ForumForumFlagsEnum.bungieStaffPost;
      case 2: return ForumForumFlagsEnum.forumNinjaPost;
      case 4: return ForumForumFlagsEnum.forumMentorPost;
      case 8: return ForumForumFlagsEnum.topicBungieStaffPosted;
      case 16: return ForumForumFlagsEnum.topicBungieVolunteerPosted;
      case 32: return ForumForumFlagsEnum.questionAnsweredByBungie;
      case 64: return ForumForumFlagsEnum.questionAnsweredByNinja;
      case 128: return ForumForumFlagsEnum.communityContent;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

