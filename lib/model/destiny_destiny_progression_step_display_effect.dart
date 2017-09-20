part of destiny2_api.api;

@Entity()
enum DestinyDestinyProgressionStepDisplayEffect {
  _0,
  _1,
  _2
  
}

class DestinyDestinyProgressionStepDisplayEffectTypeTransformer extends TypeTransformer<DestinyDestinyProgressionStepDisplayEffect> {

  @override
  dynamic encode(DestinyDestinyProgressionStepDisplayEffect data) {
    switch(data) {
      case DestinyDestinyProgressionStepDisplayEffect._0: return 0;
      case DestinyDestinyProgressionStepDisplayEffect._1: return 1;
      case DestinyDestinyProgressionStepDisplayEffect._2: return 2;
      
      default: throw('Unknown enum value to encode: $data');
    }
  }

  @override
  DestinyDestinyProgressionStepDisplayEffect decode(dynamic data) {
    switch (data) {
      case 0: return DestinyDestinyProgressionStepDisplayEffect._0;
      case 1: return DestinyDestinyProgressionStepDisplayEffect._1;
      case 2: return DestinyDestinyProgressionStepDisplayEffect._2;
      
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

