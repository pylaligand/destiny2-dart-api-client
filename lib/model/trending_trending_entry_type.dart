part of destiny2_api.api;

@Entity()
enum TrendingTrendingEntryType {
  _0,
  _1,
  _2,
  _3,
  _4,
  _5,
  _6,
  _7,
  _8,
  _9
  
}

class TrendingTrendingEntryTypeTypeTransformer extends TypeTransformer<TrendingTrendingEntryType> {

  @override
  dynamic encode(TrendingTrendingEntryType data) {
    switch(data) {
      case TrendingTrendingEntryType._0: return 0;
      case TrendingTrendingEntryType._1: return 1;
      case TrendingTrendingEntryType._2: return 2;
      case TrendingTrendingEntryType._3: return 3;
      case TrendingTrendingEntryType._4: return 4;
      case TrendingTrendingEntryType._5: return 5;
      case TrendingTrendingEntryType._6: return 6;
      case TrendingTrendingEntryType._7: return 7;
      case TrendingTrendingEntryType._8: return 8;
      case TrendingTrendingEntryType._9: return 9;
      
      default: throw('Unknown enum value to encode: $data');
    }
  }

  @override
  TrendingTrendingEntryType decode(dynamic data) {
    switch (data) {
      case 0: return TrendingTrendingEntryType._0;
      case 1: return TrendingTrendingEntryType._1;
      case 2: return TrendingTrendingEntryType._2;
      case 3: return TrendingTrendingEntryType._3;
      case 4: return TrendingTrendingEntryType._4;
      case 5: return TrendingTrendingEntryType._5;
      case 6: return TrendingTrendingEntryType._6;
      case 7: return TrendingTrendingEntryType._7;
      case 8: return TrendingTrendingEntryType._8;
      case 9: return TrendingTrendingEntryType._9;
      
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

