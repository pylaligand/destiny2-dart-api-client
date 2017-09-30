part of destiny2_api.api;

@Entity()
class CommunityCommunityStatusSort {
  /// The underlying value of this enum member.
  final int value;

  const CommunityCommunityStatusSort._internal(this.value);

  static const CommunityCommunityStatusSort viewers = const CommunityCommunityStatusSort._internal(0);
  static const CommunityCommunityStatusSort trending = const CommunityCommunityStatusSort._internal(1);
  static const CommunityCommunityStatusSort overallViewers = const CommunityCommunityStatusSort._internal(2);
  static const CommunityCommunityStatusSort followers = const CommunityCommunityStatusSort._internal(3);
}

class CommunityCommunityStatusSortTypeTransformer extends TypeTransformer<CommunityCommunityStatusSort> {

  @override
  dynamic encode(CommunityCommunityStatusSort data) {
    return data.value;
  }

  @override
  CommunityCommunityStatusSort decode(dynamic data) {
    switch (data) {
      case 0: return CommunityCommunityStatusSort.viewers;
      case 1: return CommunityCommunityStatusSort.trending;
      case 2: return CommunityCommunityStatusSort.overallViewers;
      case 3: return CommunityCommunityStatusSort.followers;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

