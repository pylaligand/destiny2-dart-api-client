part of destiny2_api.api;

@Entity()
class DestinyDefinitionsDestinyDestinationDefinition {
  
  @Property(name: 'displayProperties')
  DestinyDefinitionsCommonDestinyDisplayPropertiesDefinition displayProperties = null;
  
/* The place that \"owns\" this Destination. Use this hash to look up the DestinyPlaceDefinition. */
  @Property(name: 'placeHash')
  int placeHash = null;
  
/* If this Destination has a default Free-Roam activity, this is the hash for that Activity. Use it to look up the DestinyActivityDefintion. */
  @Property(name: 'defaultFreeroamActivityHash')
  int defaultFreeroamActivityHash = null;
  
/* If the Destination has default Activity Graphs (i.e. \"Map\") that should be shown in the director, this is the list of those Graphs. At most, only one should be active at any given time for a Destination: these would represent, for example, different variants on a Map if the Destination is changing on a macro level based on game state. */
  @Property(name: 'activityGraphEntries')
  List<DestinyDefinitionsDestinyActivityGraphListEntryDefinition> activityGraphEntries = [];
  
/* A Destination may have many \"Bubbles\" zones with human readable properties.  We don't get as much info as I'd like about them - I'd love to return info like where on the map they are located - but at least this gives you the name of those bubbles. bubbleSettings and bubbles both have the identical number of entries, and you should match up their indexes to provide matching bubble and bubbleSettings data.  DEPRECATED - Just use bubbles, it now has this data. */
  @Property(name: 'bubbleSettings')
  List<DestinyDefinitionsDestinyDestinationBubbleSettingDefinition> bubbleSettings = [];
  
/* This provides the unique identifiers for every bubble in the destination (only guaranteed unique within the destination), and any intrinsic properties of the bubble.  bubbleSettings and bubbles both have the identical number of entries, and you should match up their indexes to provide matching bubble and bubbleSettings data. */
  @Property(name: 'bubbles')
  List<DestinyDefinitionsDestinyBubbleDefinition> bubbles = [];
  
/* The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.  When entities refer to each other in Destiny content, it is this hash that they are referring to. */
  @Property(name: 'hash')
  int hash = null;
  
/* The index of the entity as it was found in the investment tables. */
  @Property(name: 'index')
  int index = null;
  
/* If this is true, then there is an entity with this identifier/type combination, but BNet is not yet allowed to show it. Sorry! */
  @Property(name: 'redacted')
  bool redacted = null;
  
  DestinyDefinitionsDestinyDestinationDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsDestinyDestinationDefinition[displayProperties=$displayProperties, placeHash=$placeHash, defaultFreeroamActivityHash=$defaultFreeroamActivityHash, activityGraphEntries=$activityGraphEntries, bubbleSettings=$bubbleSettings, bubbles=$bubbles, hash=$hash, index=$index, redacted=$redacted, ]';
  }
}

