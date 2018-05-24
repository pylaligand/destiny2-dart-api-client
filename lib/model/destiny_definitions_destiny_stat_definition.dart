part of destiny2_api.api;

@Entity()
class DestinyDefinitionsDestinyStatDefinition {
  
  @Property(name: 'displayProperties')
  DestinyDefinitionsCommonDestinyDisplayPropertiesDefinition displayProperties = null;
  
/* Stats can exist on a character or an item, and they may potentially be aggregated in different ways. The DestinyStatAggregationType enum value indicates the way that this stat is being aggregated. */
  @Property(name: 'aggregationType')
  DestinyDestinyStatAggregationType aggregationType = null;
  
/* True if the stat is computed rather than being delivered as a raw value on items.  For instance, the Light stat in Destiny 1 was a computed stat. */
  @Property(name: 'hasComputedBlock')
  bool hasComputedBlock = null;
  
/* The category of the stat, according to the game. */
  @Property(name: 'statCategory')
  DestinyDestinyStatCategory statCategory = null;
  
/* The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.  When entities refer to each other in Destiny content, it is this hash that they are referring to. */
  @Property(name: 'hash')
  int hash = null;
  
/* The index of the entity as it was found in the investment tables. */
  @Property(name: 'index')
  int index = null;
  
/* If this is true, then there is an entity with this identifier/type combination, but BNet is not yet allowed to show it. Sorry! */
  @Property(name: 'redacted')
  bool redacted = null;
  
  DestinyDefinitionsDestinyStatDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsDestinyStatDefinition[displayProperties=$displayProperties, aggregationType=$aggregationType, hasComputedBlock=$hasComputedBlock, statCategory=$statCategory, hash=$hash, index=$index, redacted=$redacted, ]';
  }
}

