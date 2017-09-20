part of destiny2_api.api;

@Entity()
class DestinyDefinitionsDestinyActivityTypeDefinition {
  
  @Property(name: 'displayProperties')
  DestinyDefinitionsCommonDestinyDisplayPropertiesDefinition displayProperties = null;
  
/* The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.  When entities refer to each other in Destiny content, it is this hash that they are referring to. */
  @Property(name: 'hash')
  int hash = null;
  
/* The index of the entity as it was found in the investment tables. */
  @Property(name: 'index')
  int index = null;
  
/* If this is true, then there is an entity with this identifier/type combination, but BNet is not yet allowed to show it. Sorry! */
  @Property(name: 'redacted')
  bool redacted = null;
  
  DestinyDefinitionsDestinyActivityTypeDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsDestinyActivityTypeDefinition[displayProperties=$displayProperties, hash=$hash, index=$index, redacted=$redacted, ]';
  }
}

