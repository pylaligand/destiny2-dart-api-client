part of destiny2_api.api;

@Entity()
enum ForumForumTopicsCategoryFiltersEnum {
  _0,
  _1,
  _2,
  _4,
  _8,
  _16,
  _32,
  _64,
  _128
  
}

class ForumForumTopicsCategoryFiltersEnumTypeTransformer extends TypeTransformer<ForumForumTopicsCategoryFiltersEnum> {

  @override
  dynamic encode(ForumForumTopicsCategoryFiltersEnum data) {
    switch(data) {
      case ForumForumTopicsCategoryFiltersEnum._0: return 0;
      case ForumForumTopicsCategoryFiltersEnum._1: return 1;
      case ForumForumTopicsCategoryFiltersEnum._2: return 2;
      case ForumForumTopicsCategoryFiltersEnum._4: return 4;
      case ForumForumTopicsCategoryFiltersEnum._8: return 8;
      case ForumForumTopicsCategoryFiltersEnum._16: return 16;
      case ForumForumTopicsCategoryFiltersEnum._32: return 32;
      case ForumForumTopicsCategoryFiltersEnum._64: return 64;
      case ForumForumTopicsCategoryFiltersEnum._128: return 128;
      
      default: throw('Unknown enum value to encode: $data');
    }
  }

  @override
  ForumForumTopicsCategoryFiltersEnum decode(dynamic data) {
    switch (data) {
      case 0: return ForumForumTopicsCategoryFiltersEnum._0;
      case 1: return ForumForumTopicsCategoryFiltersEnum._1;
      case 2: return ForumForumTopicsCategoryFiltersEnum._2;
      case 4: return ForumForumTopicsCategoryFiltersEnum._4;
      case 8: return ForumForumTopicsCategoryFiltersEnum._8;
      case 16: return ForumForumTopicsCategoryFiltersEnum._16;
      case 32: return ForumForumTopicsCategoryFiltersEnum._32;
      case 64: return ForumForumTopicsCategoryFiltersEnum._64;
      case 128: return ForumForumTopicsCategoryFiltersEnum._128;
      
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

