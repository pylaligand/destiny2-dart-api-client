part of destiny2_api.api;

@Entity()
class DestinyDefinitionsItemsDestinyItemTierTypeDefinition {
  
  @Property(name: 'displayProperties')
  DestinyDefinitionsCommonDestinyDisplayPropertiesDefinition displayProperties = null;
  
/* If this tier defines infusion properties, they will be contained here. */
  @Property(name: 'infusionProcess')
  DestinyDefinitionsItemsDestinyItemTierTypeInfusionBlock infusionProcess = null;
  
/* The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.  When entities refer to each other in Destiny content, it is this hash that they are referring to. */
  @Property(name: 'hash')
  int hash = null;
  
/* The index of the entity as it was found in the investment tables. */
  @Property(name: 'index')
  int index = null;
  
/* If this is true, then there is an entity with this identifier/type combination, but BNet is not yet allowed to show it. Sorry! */
  @Property(name: 'redacted')
  bool redacted = null;
  
  DestinyDefinitionsItemsDestinyItemTierTypeDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsItemsDestinyItemTierTypeDefinition[displayProperties=$displayProperties, infusionProcess=$infusionProcess, hash=$hash, index=$index, redacted=$redacted, ]';
  }
}

