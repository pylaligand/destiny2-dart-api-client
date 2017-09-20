part of destiny2_api.api;

@Entity()
enum ForumForumMediaType {
  _0,
  _1,
  _2,
  _3
  
}

class ForumForumMediaTypeTypeTransformer extends TypeTransformer<ForumForumMediaType> {

  @override
  dynamic encode(ForumForumMediaType data) {
    switch(data) {
      case ForumForumMediaType._0: return 0;
      case ForumForumMediaType._1: return 1;
      case ForumForumMediaType._2: return 2;
      case ForumForumMediaType._3: return 3;
      
      default: throw('Unknown enum value to encode: $data');
    }
  }

  @override
  ForumForumMediaType decode(dynamic data) {
    switch (data) {
      case 0: return ForumForumMediaType._0;
      case 1: return ForumForumMediaType._1;
      case 2: return ForumForumMediaType._2;
      case 3: return ForumForumMediaType._3;
      
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

