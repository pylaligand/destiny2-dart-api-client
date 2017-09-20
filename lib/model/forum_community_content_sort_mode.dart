part of destiny2_api.api;

@Entity()
enum ForumCommunityContentSortMode {
  _0,
  _1,
  _2
  
}

class ForumCommunityContentSortModeTypeTransformer extends TypeTransformer<ForumCommunityContentSortMode> {

  @override
  dynamic encode(ForumCommunityContentSortMode data) {
    switch(data) {
      case ForumCommunityContentSortMode._0: return 0;
      case ForumCommunityContentSortMode._1: return 1;
      case ForumCommunityContentSortMode._2: return 2;
      
      default: throw('Unknown enum value to encode: $data');
    }
  }

  @override
  ForumCommunityContentSortMode decode(dynamic data) {
    switch (data) {
      case 0: return ForumCommunityContentSortMode._0;
      case 1: return ForumCommunityContentSortMode._1;
      case 2: return ForumCommunityContentSortMode._2;
      
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

