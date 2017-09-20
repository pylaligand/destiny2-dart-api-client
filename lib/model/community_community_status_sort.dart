part of destiny2_api.api;

@Entity()
enum CommunityCommunityStatusSort {
  _0,
  _1,
  _2,
  _3
  
}

class CommunityCommunityStatusSortTypeTransformer extends TypeTransformer<CommunityCommunityStatusSort> {

  @override
  dynamic encode(CommunityCommunityStatusSort data) {
    switch(data) {
      case CommunityCommunityStatusSort._0: return 0;
      case CommunityCommunityStatusSort._1: return 1;
      case CommunityCommunityStatusSort._2: return 2;
      case CommunityCommunityStatusSort._3: return 3;
      
      default: throw('Unknown enum value to encode: $data');
    }
  }

  @override
  CommunityCommunityStatusSort decode(dynamic data) {
    switch (data) {
      case 0: return CommunityCommunityStatusSort._0;
      case 1: return CommunityCommunityStatusSort._1;
      case 2: return CommunityCommunityStatusSort._2;
      case 3: return CommunityCommunityStatusSort._3;
      
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

