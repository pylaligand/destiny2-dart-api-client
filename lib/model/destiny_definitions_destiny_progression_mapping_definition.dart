part of destiny2_api.api;

@Entity()
class DestinyDefinitionsDestinyProgressionMappingDefinition {
  /* Infrequently defined in practice. Defer to the individual progressions' display properties. */
  @Property(name: 'displayProperties')
  DestinyDefinitionsCommonDestinyDisplayPropertiesDefinition displayProperties = null;
  
/* The localized unit of measurement for progression across the progressions defined in this mapping. Unfortunately, this is very infrequently defined. Defer to the individual progressions' display units. */
  @Property(name: 'displayUnits')
  String displayUnits = null;
  
/* The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.  When entities refer to each other in Destiny content, it is this hash that they are referring to. */
  @Property(name: 'hash')
  int hash = null;
  
/* The index of the entity as it was found in the investment tables. */
  @Property(name: 'index')
  int index = null;
  
/* If this is true, then there is an entity with this identifier/type combination, but BNet is not yet allowed to show it. Sorry! */
  @Property(name: 'redacted')
  bool redacted = null;
  
  DestinyDefinitionsDestinyProgressionMappingDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsDestinyProgressionMappingDefinition[displayProperties=$displayProperties, displayUnits=$displayUnits, hash=$hash, index=$index, redacted=$redacted, ]';
  }
}

