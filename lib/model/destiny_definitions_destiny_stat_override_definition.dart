part of destiny2_api.api;

@Entity()
class DestinyDefinitionsDestinyStatOverrideDefinition {
  /* The hash identifier of the stat whose display properties are being overridden. */
  @Property(name: 'statHash')
  int statHash = null;
  
/* The display properties to show instead of the base DestinyStatDefinition display properties. */
  @Property(name: 'displayProperties')
  DestinyDefinitionsCommonDestinyDisplayPropertiesDefinition displayProperties = null;
  
  DestinyDefinitionsDestinyStatOverrideDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsDestinyStatOverrideDefinition[statHash=$statHash, displayProperties=$displayProperties, ]';
  }
}

