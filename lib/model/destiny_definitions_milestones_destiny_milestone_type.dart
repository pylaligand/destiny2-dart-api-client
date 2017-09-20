part of destiny2_api.api;

@Entity()
enum DestinyDefinitionsMilestonesDestinyMilestoneType {
  _0,
  _1,
  _2,
  _3,
  _4,
  _5
  
}

class DestinyDefinitionsMilestonesDestinyMilestoneTypeTypeTransformer extends TypeTransformer<DestinyDefinitionsMilestonesDestinyMilestoneType> {

  @override
  dynamic encode(DestinyDefinitionsMilestonesDestinyMilestoneType data) {
    switch(data) {
      case DestinyDefinitionsMilestonesDestinyMilestoneType._0: return 0;
      case DestinyDefinitionsMilestonesDestinyMilestoneType._1: return 1;
      case DestinyDefinitionsMilestonesDestinyMilestoneType._2: return 2;
      case DestinyDefinitionsMilestonesDestinyMilestoneType._3: return 3;
      case DestinyDefinitionsMilestonesDestinyMilestoneType._4: return 4;
      case DestinyDefinitionsMilestonesDestinyMilestoneType._5: return 5;
      
      default: throw('Unknown enum value to encode: $data');
    }
  }

  @override
  DestinyDefinitionsMilestonesDestinyMilestoneType decode(dynamic data) {
    switch (data) {
      case 0: return DestinyDefinitionsMilestonesDestinyMilestoneType._0;
      case 1: return DestinyDefinitionsMilestonesDestinyMilestoneType._1;
      case 2: return DestinyDefinitionsMilestonesDestinyMilestoneType._2;
      case 3: return DestinyDefinitionsMilestonesDestinyMilestoneType._3;
      case 4: return DestinyDefinitionsMilestonesDestinyMilestoneType._4;
      case 5: return DestinyDefinitionsMilestonesDestinyMilestoneType._5;
      
      default: throw('Unknown enum value to decode: $data');
    }
  }
}

