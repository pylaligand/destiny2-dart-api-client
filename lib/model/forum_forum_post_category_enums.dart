part of destiny2_api.api;

@Entity()
enum ForumForumPostCategoryEnums {
  _0,
  _1,
  _2,
  _4,
  _8,
  _16,
  _32,
  _64,
  _128,
  _256,
  _512,
  _1024
  
}

class ForumForumPostCategoryEnumsTypeTransformer extends TypeTransformer<ForumForumPostCategoryEnums> {

  @override
  dynamic encode(ForumForumPostCategoryEnums data) {
    switch(data) {
      case ForumForumPostCategoryEnums._0: return 0;
      case ForumForumPostCategoryEnums._1: return 1;
      case ForumForumPostCategoryEnums._2: return 2;
      case ForumForumPostCategoryEnums._4: return 4;
      case ForumForumPostCategoryEnums._8: return 8;
      case ForumForumPostCategoryEnums._16: return 16;
      case ForumForumPostCategoryEnums._32: return 32;
      case ForumForumPostCategoryEnums._64: return 64;
      case ForumForumPostCategoryEnums._128: return 128;
      case ForumForumPostCategoryEnums._256: return 256;
      case ForumForumPostCategoryEnums._512: return 512;
      case ForumForumPostCategoryEnums._1024: return 1024;
      
      default: throw('Unknown enum value to encode: $data');
    }
  }

  @override
  ForumForumPostCategoryEnums decode(dynamic data) {
    switch (data) {
      case 0: return ForumForumPostCategoryEnums._0;
      case 1: return ForumForumPostCategoryEnums._1;
      case 2: return ForumForumPostCategoryEnums._2;
      case 4: return ForumForumPostCategoryEnums._4;
      case 8: return ForumForumPostCategoryEnums._8;
      case 16: return ForumForumPostCategoryEnums._16;
      case 32: return ForumForumPostCategoryEnums._32;
      case 64: return ForumForumPostCategoryEnums._64;
      case 128: return ForumForumPostCategoryEnums._128;
      case 256: return ForumForumPostCategoryEnums._256;
      case 512: return ForumForumPostCategoryEnums._512;
      case 1024: return ForumForumPostCategoryEnums._1024;
      
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

