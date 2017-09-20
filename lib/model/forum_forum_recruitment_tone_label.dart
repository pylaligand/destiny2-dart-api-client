part of destiny2_api.api;

@Entity()
enum ForumForumRecruitmentToneLabel {
  _0,
  _1,
  _2
  
}

class ForumForumRecruitmentToneLabelTypeTransformer extends TypeTransformer<ForumForumRecruitmentToneLabel> {

  @override
  dynamic encode(ForumForumRecruitmentToneLabel data) {
    switch(data) {
      case ForumForumRecruitmentToneLabel._0: return 0;
      case ForumForumRecruitmentToneLabel._1: return 1;
      case ForumForumRecruitmentToneLabel._2: return 2;
      
      default: throw('Unknown enum value to encode: $data');
    }
  }

  @override
  ForumForumRecruitmentToneLabel decode(dynamic data) {
    switch (data) {
      case 0: return ForumForumRecruitmentToneLabel._0;
      case 1: return ForumForumRecruitmentToneLabel._1;
      case 2: return ForumForumRecruitmentToneLabel._2;
      
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

