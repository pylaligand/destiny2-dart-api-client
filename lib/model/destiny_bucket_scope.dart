part of destiny2_api.api;

@Entity()
enum DestinyBucketScope {
  _0,
  _1
  
}

class DestinyBucketScopeTypeTransformer extends TypeTransformer<DestinyBucketScope> {

  @override
  dynamic encode(DestinyBucketScope data) {
    switch(data) {
      case DestinyBucketScope._0: return 0;
      case DestinyBucketScope._1: return 1;
      
      default: throw('Unknown enum value to encode: $data');
    }
  }

  @override
  DestinyBucketScope decode(dynamic data) {
    switch (data) {
      case 0: return DestinyBucketScope._0;
      case 1: return DestinyBucketScope._1;
      
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

