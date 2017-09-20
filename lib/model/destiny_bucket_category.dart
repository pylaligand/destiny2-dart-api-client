part of destiny2_api.api;

@Entity()
enum DestinyBucketCategory {
  _0,
  _1,
  _2,
  _3,
  _4
  
}

class DestinyBucketCategoryTypeTransformer extends TypeTransformer<DestinyBucketCategory> {

  @override
  dynamic encode(DestinyBucketCategory data) {
    switch(data) {
      case DestinyBucketCategory._0: return 0;
      case DestinyBucketCategory._1: return 1;
      case DestinyBucketCategory._2: return 2;
      case DestinyBucketCategory._3: return 3;
      case DestinyBucketCategory._4: return 4;
      
      default: throw('Unknown enum value to encode: $data');
    }
  }

  @override
  DestinyBucketCategory decode(dynamic data) {
    switch (data) {
      case 0: return DestinyBucketCategory._0;
      case 1: return DestinyBucketCategory._1;
      case 2: return DestinyBucketCategory._2;
      case 3: return DestinyBucketCategory._3;
      case 4: return DestinyBucketCategory._4;
      
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

