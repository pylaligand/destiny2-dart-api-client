part of destiny2_api.api;

@Entity()
enum ForumForumTopicsQuickDateEnum {
  _0,
  _1,
  _2,
  _3,
  _4
  
}

class ForumForumTopicsQuickDateEnumTypeTransformer extends TypeTransformer<ForumForumTopicsQuickDateEnum> {

  @override
  dynamic encode(ForumForumTopicsQuickDateEnum data) {
    switch(data) {
      case ForumForumTopicsQuickDateEnum._0: return 0;
      case ForumForumTopicsQuickDateEnum._1: return 1;
      case ForumForumTopicsQuickDateEnum._2: return 2;
      case ForumForumTopicsQuickDateEnum._3: return 3;
      case ForumForumTopicsQuickDateEnum._4: return 4;
      
      default: throw('Unknown enum value to encode: $data');
    }
  }

  @override
  ForumForumTopicsQuickDateEnum decode(dynamic data) {
    switch (data) {
      case 0: return ForumForumTopicsQuickDateEnum._0;
      case 1: return ForumForumTopicsQuickDateEnum._1;
      case 2: return ForumForumTopicsQuickDateEnum._2;
      case 3: return ForumForumTopicsQuickDateEnum._3;
      case 4: return ForumForumTopicsQuickDateEnum._4;
      
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

