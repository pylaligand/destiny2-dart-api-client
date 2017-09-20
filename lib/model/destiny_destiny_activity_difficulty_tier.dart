part of destiny2_api.api;

@Entity()
enum DestinyDestinyActivityDifficultyTier {
  _0,
  _1,
  _2,
  _3,
  _4,
  _5,
  _6,
  _7
  
}

class DestinyDestinyActivityDifficultyTierTypeTransformer extends TypeTransformer<DestinyDestinyActivityDifficultyTier> {

  @override
  dynamic encode(DestinyDestinyActivityDifficultyTier data) {
    switch(data) {
      case DestinyDestinyActivityDifficultyTier._0: return 0;
      case DestinyDestinyActivityDifficultyTier._1: return 1;
      case DestinyDestinyActivityDifficultyTier._2: return 2;
      case DestinyDestinyActivityDifficultyTier._3: return 3;
      case DestinyDestinyActivityDifficultyTier._4: return 4;
      case DestinyDestinyActivityDifficultyTier._5: return 5;
      case DestinyDestinyActivityDifficultyTier._6: return 6;
      case DestinyDestinyActivityDifficultyTier._7: return 7;
      
      default: throw('Unknown enum value to encode: $data');
    }
  }

  @override
  DestinyDestinyActivityDifficultyTier decode(dynamic data) {
    switch (data) {
      case 0: return DestinyDestinyActivityDifficultyTier._0;
      case 1: return DestinyDestinyActivityDifficultyTier._1;
      case 2: return DestinyDestinyActivityDifficultyTier._2;
      case 3: return DestinyDestinyActivityDifficultyTier._3;
      case 4: return DestinyDestinyActivityDifficultyTier._4;
      case 5: return DestinyDestinyActivityDifficultyTier._5;
      case 6: return DestinyDestinyActivityDifficultyTier._6;
      case 7: return DestinyDestinyActivityDifficultyTier._7;
      
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

