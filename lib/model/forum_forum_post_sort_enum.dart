part of destiny2_api.api;

@Entity()
enum ForumForumPostSortEnum {
  _0,
  _1
  
}

class ForumForumPostSortEnumTypeTransformer extends TypeTransformer<ForumForumPostSortEnum> {

  @override
  dynamic encode(ForumForumPostSortEnum data) {
    switch(data) {
      case ForumForumPostSortEnum._0: return 0;
      case ForumForumPostSortEnum._1: return 1;
      
      default: throw('Unknown enum value to encode: $data');
    }
  }

  @override
  ForumForumPostSortEnum decode(dynamic data) {
    switch (data) {
      case 0: return ForumForumPostSortEnum._0;
      case 1: return ForumForumPostSortEnum._1;
      
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

