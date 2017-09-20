part of destiny2_api.api;

@Entity()
enum ForumForumRecruitmentIntensityLabel {
  _0,
  _1,
  _2
  
}

class ForumForumRecruitmentIntensityLabelTypeTransformer extends TypeTransformer<ForumForumRecruitmentIntensityLabel> {

  @override
  dynamic encode(ForumForumRecruitmentIntensityLabel data) {
    switch(data) {
      case ForumForumRecruitmentIntensityLabel._0: return 0;
      case ForumForumRecruitmentIntensityLabel._1: return 1;
      case ForumForumRecruitmentIntensityLabel._2: return 2;
      
      default: throw('Unknown enum value to encode: $data');
    }
  }

  @override
  ForumForumRecruitmentIntensityLabel decode(dynamic data) {
    switch (data) {
      case 0: return ForumForumRecruitmentIntensityLabel._0;
      case 1: return ForumForumRecruitmentIntensityLabel._1;
      case 2: return ForumForumRecruitmentIntensityLabel._2;
      
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

