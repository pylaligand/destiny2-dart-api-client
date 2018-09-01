part of destiny2_api.api;

@Entity()
class DestinyDefinitionsDestinyBubbleDefinition {
  /* The identifier for the bubble: only guaranteed to be unique within the Destination. */
  @Property(name: 'hash')
  int hash = null;
  
/* The display properties of this bubble, so you don't have to look them up in a separate list anymore. */
  @Property(name: 'displayProperties')
  DestinyDefinitionsCommonDestinyDisplayPropertiesDefinition displayProperties = null;
  
  DestinyDefinitionsDestinyBubbleDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsDestinyBubbleDefinition[hash=$hash, displayProperties=$displayProperties, ]';
  }
}

