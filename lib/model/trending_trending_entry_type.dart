part of destiny2_api.api;

@Entity()
class TrendingTrendingEntryType {
  /// The underlying value of this enum member.
  final int value;

  const TrendingTrendingEntryType._internal(this.value);

  /// The known entity types that you can have returned from Trending.
  static const TrendingTrendingEntryType news = const TrendingTrendingEntryType._internal(0);
  /// The known entity types that you can have returned from Trending.
  static const TrendingTrendingEntryType destinyItem = const TrendingTrendingEntryType._internal(1);
  /// The known entity types that you can have returned from Trending.
  static const TrendingTrendingEntryType destinyActivity = const TrendingTrendingEntryType._internal(2);
  /// The known entity types that you can have returned from Trending.
  static const TrendingTrendingEntryType destinyRitual = const TrendingTrendingEntryType._internal(3);
  /// The known entity types that you can have returned from Trending.
  static const TrendingTrendingEntryType supportArticle = const TrendingTrendingEntryType._internal(4);
  /// The known entity types that you can have returned from Trending.
  static const TrendingTrendingEntryType creation = const TrendingTrendingEntryType._internal(5);
  /// The known entity types that you can have returned from Trending.
  static const TrendingTrendingEntryType stream = const TrendingTrendingEntryType._internal(6);
  /// The known entity types that you can have returned from Trending.
  static const TrendingTrendingEntryType update = const TrendingTrendingEntryType._internal(7);
  /// The known entity types that you can have returned from Trending.
  static const TrendingTrendingEntryType link = const TrendingTrendingEntryType._internal(8);
  /// The known entity types that you can have returned from Trending.
  static const TrendingTrendingEntryType forumTag = const TrendingTrendingEntryType._internal(9);
  /// The known entity types that you can have returned from Trending.
  static const TrendingTrendingEntryType container = const TrendingTrendingEntryType._internal(10);
  /// The known entity types that you can have returned from Trending.
  static const TrendingTrendingEntryType release = const TrendingTrendingEntryType._internal(11);
}

class TrendingTrendingEntryTypeTypeTransformer extends TypeTransformer<TrendingTrendingEntryType> {

  @override
  dynamic encode(TrendingTrendingEntryType data) {
    return data.value;
  }

  @override
  TrendingTrendingEntryType decode(dynamic data) {
    switch (data) {
      case 0: return TrendingTrendingEntryType.news;
      case 1: return TrendingTrendingEntryType.destinyItem;
      case 2: return TrendingTrendingEntryType.destinyActivity;
      case 3: return TrendingTrendingEntryType.destinyRitual;
      case 4: return TrendingTrendingEntryType.supportArticle;
      case 5: return TrendingTrendingEntryType.creation;
      case 6: return TrendingTrendingEntryType.stream;
      case 7: return TrendingTrendingEntryType.update;
      case 8: return TrendingTrendingEntryType.link;
      case 9: return TrendingTrendingEntryType.forumTag;
      case 10: return TrendingTrendingEntryType.container;
      case 11: return TrendingTrendingEntryType.release;
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

