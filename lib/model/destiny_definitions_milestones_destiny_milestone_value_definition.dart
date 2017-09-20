part of destiny2_api.api;

@Entity()
class DestinyDefinitionsMilestonesDestinyMilestoneValueDefinition {
  
  @Property(name: 'key')
  String key = null;
  

  @Property(name: 'displayProperties')
  DestinyDefinitionsCommonDestinyDisplayPropertiesDefinition displayProperties = null;
  
  DestinyDefinitionsMilestonesDestinyMilestoneValueDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsMilestonesDestinyMilestoneValueDefinition[key=$key, displayProperties=$displayProperties, ]';
  }
}

