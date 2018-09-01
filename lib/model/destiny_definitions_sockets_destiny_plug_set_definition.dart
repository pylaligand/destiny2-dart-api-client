part of destiny2_api.api;

@Entity()
class DestinyDefinitionsSocketsDestinyPlugSetDefinition {
  /* If you want to show these plugs in isolation, these are the display properties for them. */
  @Property(name: 'displayProperties')
  DestinyDefinitionsCommonDestinyDisplayPropertiesDefinition displayProperties = null;
  
/* This is a list of pre-determined plugs that can be plugged into this socket, without the character having the plug in their inventory.  If this list is populated, you will not be allowed to plug an arbitrary item in the socket: you will only be able to choose from one of these reusable plugs. */
  @Property(name: 'reusablePlugItems')
  List<DestinyDefinitionsDestinyItemSocketEntryPlugItemDefinition> reusablePlugItems = [];
  
/* The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.  When entities refer to each other in Destiny content, it is this hash that they are referring to. */
  @Property(name: 'hash')
  int hash = null;
  
/* The index of the entity as it was found in the investment tables. */
  @Property(name: 'index')
  int index = null;
  
/* If this is true, then there is an entity with this identifier/type combination, but BNet is not yet allowed to show it. Sorry! */
  @Property(name: 'redacted')
  bool redacted = null;
  
  DestinyDefinitionsSocketsDestinyPlugSetDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsSocketsDestinyPlugSetDefinition[displayProperties=$displayProperties, reusablePlugItems=$reusablePlugItems, hash=$hash, index=$index, redacted=$redacted, ]';
  }
}

