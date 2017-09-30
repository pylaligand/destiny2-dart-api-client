part of destiny2_api.api;

@Entity()
class ForumForumRecruitmentIntensityLabel {
  /// The underlying value of this enum member.
  final int value;

  const ForumForumRecruitmentIntensityLabel._internal(this.value);

  static const ForumForumRecruitmentIntensityLabel none = const ForumForumRecruitmentIntensityLabel._internal(0);
  static const ForumForumRecruitmentIntensityLabel casual = const ForumForumRecruitmentIntensityLabel._internal(1);
  static const ForumForumRecruitmentIntensityLabel professional = const ForumForumRecruitmentIntensityLabel._internal(2);
}

class ForumForumRecruitmentIntensityLabelTypeTransformer extends TypeTransformer<ForumForumRecruitmentIntensityLabel> {

  @override
  dynamic encode(ForumForumRecruitmentIntensityLabel data) {
    return data.value;
  }

  @override
  ForumForumRecruitmentIntensityLabel decode(dynamic data) {
    switch (data) {
      case 0: return ForumForumRecruitmentIntensityLabel.none;
      case 1: return ForumForumRecruitmentIntensityLabel.casual;
      case 2: return ForumForumRecruitmentIntensityLabel.professional;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

