part of destiny2_api.api;

@Entity()
enum DestinyDestinyStatAggregationType {
  _0,
  _1,
  _2
  
}

class DestinyDestinyStatAggregationTypeTypeTransformer extends TypeTransformer<DestinyDestinyStatAggregationType> {

  @override
  dynamic encode(DestinyDestinyStatAggregationType data) {
    switch(data) {
      case DestinyDestinyStatAggregationType._0: return 0;
      case DestinyDestinyStatAggregationType._1: return 1;
      case DestinyDestinyStatAggregationType._2: return 2;
      
      default: throw('Unknown enum value to encode: $data');
    }
  }

  @override
  DestinyDestinyStatAggregationType decode(dynamic data) {
    switch (data) {
      case 0: return DestinyDestinyStatAggregationType._0;
      case 1: return DestinyDestinyStatAggregationType._1;
      case 2: return DestinyDestinyStatAggregationType._2;
      
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

