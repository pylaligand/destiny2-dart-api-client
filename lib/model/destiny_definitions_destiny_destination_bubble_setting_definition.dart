part of destiny2_api.api;

@Entity()
class DestinyDefinitionsDestinyDestinationBubbleSettingDefinition {
  
  @Property(name: 'displayProperties')
  DestinyDefinitionsCommonDestinyDisplayPropertiesDefinition displayProperties = null;
  
  DestinyDefinitionsDestinyDestinationBubbleSettingDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsDestinyDestinationBubbleSettingDefinition[displayProperties=$displayProperties, ]';
  }
}

