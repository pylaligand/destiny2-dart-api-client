part of destiny2_api.api;

@Entity()
enum ForumForumTopicsSortEnum {
  _0,
  _1,
  _2,
  _3,
  _4,
  _5,
  _6,
  _7
  
}

class ForumForumTopicsSortEnumTypeTransformer extends TypeTransformer<ForumForumTopicsSortEnum> {

  @override
  dynamic encode(ForumForumTopicsSortEnum data) {
    switch(data) {
      case ForumForumTopicsSortEnum._0: return 0;
      case ForumForumTopicsSortEnum._1: return 1;
      case ForumForumTopicsSortEnum._2: return 2;
      case ForumForumTopicsSortEnum._3: return 3;
      case ForumForumTopicsSortEnum._4: return 4;
      case ForumForumTopicsSortEnum._5: return 5;
      case ForumForumTopicsSortEnum._6: return 6;
      case ForumForumTopicsSortEnum._7: return 7;
      
      default: throw('Unknown enum value to encode: $data');
    }
  }

  @override
  ForumForumTopicsSortEnum decode(dynamic data) {
    switch (data) {
      case 0: return ForumForumTopicsSortEnum._0;
      case 1: return ForumForumTopicsSortEnum._1;
      case 2: return ForumForumTopicsSortEnum._2;
      case 3: return ForumForumTopicsSortEnum._3;
      case 4: return ForumForumTopicsSortEnum._4;
      case 5: return ForumForumTopicsSortEnum._5;
      case 6: return ForumForumTopicsSortEnum._6;
      case 7: return ForumForumTopicsSortEnum._7;
      
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

