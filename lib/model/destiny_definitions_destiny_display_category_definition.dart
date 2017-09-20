part of destiny2_api.api;

@Entity()
class DestinyDefinitionsDestinyDisplayCategoryDefinition {
  /* A string identifier for the display category. */
  @Property(name: 'identifier')
  String identifier = null;
  

  @Property(name: 'displayProperties')
  DestinyDefinitionsCommonDestinyDisplayPropertiesDefinition displayProperties = null;
  
  DestinyDefinitionsDestinyDisplayCategoryDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsDestinyDisplayCategoryDefinition[identifier=$identifier, displayProperties=$displayProperties, ]';
  }
}

