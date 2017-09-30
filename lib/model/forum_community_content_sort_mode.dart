part of destiny2_api.api;

@Entity()
class ForumCommunityContentSortMode {
  /// The underlying value of this enum member.
  final int value;

  const ForumCommunityContentSortMode._internal(this.value);

  static const ForumCommunityContentSortMode trending = const ForumCommunityContentSortMode._internal(0);
  static const ForumCommunityContentSortMode latest = const ForumCommunityContentSortMode._internal(1);
  static const ForumCommunityContentSortMode highestRated = const ForumCommunityContentSortMode._internal(2);
}

class ForumCommunityContentSortModeTypeTransformer extends TypeTransformer<ForumCommunityContentSortMode> {

  @override
  dynamic encode(ForumCommunityContentSortMode data) {
    return data.value;
  }

  @override
  ForumCommunityContentSortMode decode(dynamic data) {
    switch (data) {
      case 0: return ForumCommunityContentSortMode.trending;
      case 1: return ForumCommunityContentSortMode.latest;
      case 2: return ForumCommunityContentSortMode.highestRated;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

