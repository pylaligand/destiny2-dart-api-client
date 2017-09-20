part of destiny2_api.api;

@Entity()
enum DestinyDestinyVendorInteractionRewardSelection {
  _0,
  _1,
  _2
  
}

class DestinyDestinyVendorInteractionRewardSelectionTypeTransformer extends TypeTransformer<DestinyDestinyVendorInteractionRewardSelection> {

  @override
  dynamic encode(DestinyDestinyVendorInteractionRewardSelection data) {
    switch(data) {
      case DestinyDestinyVendorInteractionRewardSelection._0: return 0;
      case DestinyDestinyVendorInteractionRewardSelection._1: return 1;
      case DestinyDestinyVendorInteractionRewardSelection._2: return 2;
      
      default: throw('Unknown enum value to encode: $data');
    }
  }

  @override
  DestinyDestinyVendorInteractionRewardSelection decode(dynamic data) {
    switch (data) {
      case 0: return DestinyDestinyVendorInteractionRewardSelection._0;
      case 1: return DestinyDestinyVendorInteractionRewardSelection._1;
      case 2: return DestinyDestinyVendorInteractionRewardSelection._2;
      
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

