part of destiny2_api.api;

@Entity()
class ForumForumRecruitmentToneLabel {
  /// The underlying value of this enum member.
  final int value;

  const ForumForumRecruitmentToneLabel._internal(this.value);

  static const ForumForumRecruitmentToneLabel none = const ForumForumRecruitmentToneLabel._internal(0);
  static const ForumForumRecruitmentToneLabel familyFriendly = const ForumForumRecruitmentToneLabel._internal(1);
  static const ForumForumRecruitmentToneLabel rowdy = const ForumForumRecruitmentToneLabel._internal(2);
}

class ForumForumRecruitmentToneLabelTypeTransformer extends TypeTransformer<ForumForumRecruitmentToneLabel> {

  @override
  dynamic encode(ForumForumRecruitmentToneLabel data) {
    return data.value;
  }

  @override
  ForumForumRecruitmentToneLabel decode(dynamic data) {
    switch (data) {
      case 0: return ForumForumRecruitmentToneLabel.none;
      case 1: return ForumForumRecruitmentToneLabel.familyFriendly;
      case 2: return ForumForumRecruitmentToneLabel.rowdy;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

