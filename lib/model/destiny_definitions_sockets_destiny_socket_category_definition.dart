part of destiny2_api.api;

@Entity()
class DestinyDefinitionsSocketsDestinySocketCategoryDefinition {
  
  @Property(name: 'displayProperties')
  DestinyDefinitionsCommonDestinyDisplayPropertiesDefinition displayProperties = null;
  
/* A string hinting to the game's UI system about how the sockets in this category should be displayed.  BNet doesn't use it: it's up to you to find valid values and make your own special UI if you want to honor this category style. */
  @Property(name: 'uiCategoryStyle')
  int uiCategoryStyle = null;
  
/* Same as uiCategoryStyle, but in a more usable enumeration form. */
  @Property(name: 'categoryStyle')
  DestinyDestinySocketCategoryStyle categoryStyle = null;
  
/* The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.  When entities refer to each other in Destiny content, it is this hash that they are referring to. */
  @Property(name: 'hash')
  int hash = null;
  
/* The index of the entity as it was found in the investment tables. */
  @Property(name: 'index')
  int index = null;
  
/* If this is true, then there is an entity with this identifier/type combination, but BNet is not yet allowed to show it. Sorry! */
  @Property(name: 'redacted')
  bool redacted = null;
  
  DestinyDefinitionsSocketsDestinySocketCategoryDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsSocketsDestinySocketCategoryDefinition[displayProperties=$displayProperties, uiCategoryStyle=$uiCategoryStyle, categoryStyle=$categoryStyle, hash=$hash, index=$index, redacted=$redacted, ]';
  }
}

