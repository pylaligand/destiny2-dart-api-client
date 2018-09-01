part of destiny2_api.api;

@Entity()
class DestinyDefinitionsChecklistsDestinyChecklistDefinition {
  
  @Property(name: 'displayProperties')
  DestinyDefinitionsCommonDestinyDisplayPropertiesDefinition displayProperties = null;
  
/* A localized string prompting you to view the checklist. */
  @Property(name: 'viewActionString')
  String viewActionString = null;
  
/* Indicates whether you will find this checklist on the Profile or Character components. */
  @Property(name: 'scope')
  DestinyDestinyScope scope = null;
  
/* The individual checklist items. Gotta catch 'em all. */
  @Property(name: 'entries')
  List<DestinyDefinitionsChecklistsDestinyChecklistEntryDefinition> entries = [];
  
/* The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.  When entities refer to each other in Destiny content, it is this hash that they are referring to. */
  @Property(name: 'hash')
  int hash = null;
  
/* The index of the entity as it was found in the investment tables. */
  @Property(name: 'index')
  int index = null;
  
/* If this is true, then there is an entity with this identifier/type combination, but BNet is not yet allowed to show it. Sorry! */
  @Property(name: 'redacted')
  bool redacted = null;
  
  DestinyDefinitionsChecklistsDestinyChecklistDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsChecklistsDestinyChecklistDefinition[displayProperties=$displayProperties, viewActionString=$viewActionString, scope=$scope, entries=$entries, hash=$hash, index=$index, redacted=$redacted, ]';
  }
}

