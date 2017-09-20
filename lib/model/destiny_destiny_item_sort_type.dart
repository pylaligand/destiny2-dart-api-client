part of destiny2_api.api;

@Entity()
enum DestinyDestinyItemSortType {
  _0,
  _1,
  _2
  
}

class DestinyDestinyItemSortTypeTypeTransformer extends TypeTransformer<DestinyDestinyItemSortType> {

  @override
  dynamic encode(DestinyDestinyItemSortType data) {
    switch(data) {
      case DestinyDestinyItemSortType._0: return 0;
      case DestinyDestinyItemSortType._1: return 1;
      case DestinyDestinyItemSortType._2: return 2;
      
      default: throw('Unknown enum value to encode: $data');
    }
  }

  @override
  DestinyDestinyItemSortType decode(dynamic data) {
    switch (data) {
      case 0: return DestinyDestinyItemSortType._0;
      case 1: return DestinyDestinyItemSortType._1;
      case 2: return DestinyDestinyItemSortType._2;
      
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

