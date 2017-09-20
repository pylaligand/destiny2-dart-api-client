part of destiny2_api.api;

@Entity()
enum ForumForumFlagsEnum {
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

class ForumForumFlagsEnumTypeTransformer extends TypeTransformer<ForumForumFlagsEnum> {

  @override
  dynamic encode(ForumForumFlagsEnum data) {
    switch(data) {
      case ForumForumFlagsEnum._0: return 0;
      case ForumForumFlagsEnum._1: return 1;
      case ForumForumFlagsEnum._2: return 2;
      case ForumForumFlagsEnum._4: return 4;
      case ForumForumFlagsEnum._8: return 8;
      case ForumForumFlagsEnum._16: return 16;
      case ForumForumFlagsEnum._32: return 32;
      case ForumForumFlagsEnum._64: return 64;
      case ForumForumFlagsEnum._128: return 128;
      
      default: throw('Unknown enum value to encode: $data');
    }
  }

  @override
  ForumForumFlagsEnum decode(dynamic data) {
    switch (data) {
      case 0: return ForumForumFlagsEnum._0;
      case 1: return ForumForumFlagsEnum._1;
      case 2: return ForumForumFlagsEnum._2;
      case 4: return ForumForumFlagsEnum._4;
      case 8: return ForumForumFlagsEnum._8;
      case 16: return ForumForumFlagsEnum._16;
      case 32: return ForumForumFlagsEnum._32;
      case 64: return ForumForumFlagsEnum._64;
      case 128: return ForumForumFlagsEnum._128;
      
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

