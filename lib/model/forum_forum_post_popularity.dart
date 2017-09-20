part of destiny2_api.api;

@Entity()
enum ForumForumPostPopularity {
  _0,
  _1,
  _2,
  _3,
  _4,
  _5
  
}

class ForumForumPostPopularityTypeTransformer extends TypeTransformer<ForumForumPostPopularity> {

  @override
  dynamic encode(ForumForumPostPopularity data) {
    switch(data) {
      case ForumForumPostPopularity._0: return 0;
      case ForumForumPostPopularity._1: return 1;
      case ForumForumPostPopularity._2: return 2;
      case ForumForumPostPopularity._3: return 3;
      case ForumForumPostPopularity._4: return 4;
      case ForumForumPostPopularity._5: return 5;
      
      default: throw('Unknown enum value to encode: $data');
    }
  }

  @override
  ForumForumPostPopularity decode(dynamic data) {
    switch (data) {
      case 0: return ForumForumPostPopularity._0;
      case 1: return ForumForumPostPopularity._1;
      case 2: return ForumForumPostPopularity._2;
      case 3: return ForumForumPostPopularity._3;
      case 4: return ForumForumPostPopularity._4;
      case 5: return ForumForumPostPopularity._5;
      
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

