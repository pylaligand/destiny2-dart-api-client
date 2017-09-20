part of destiny2_api.api;

@Entity()
class DestinyDefinitionsDirectorDestinyActivityGraphDefinition {
  /* These represent the visual \"nodes\" on the map's view. These are the activities you can click on in the map. */
  @Property(name: 'nodes')
  List<DestinyDefinitionsDirectorDestinyActivityGraphNodeDefinition> nodes = [];
  
/* Represents one-off/special UI elements that appear on the map. */
  @Property(name: 'artElements')
  List<DestinyDefinitionsDirectorDestinyActivityGraphArtElementDefinition> artElements = [];
  
/* Represents connections between graph nodes. However, it lacks context that we'd need to make good use of it. */
  @Property(name: 'connections')
  List<DestinyDefinitionsDirectorDestinyActivityGraphConnectionDefinition> connections = [];
  
/* Objectives can display on maps, and this is supposedly metadata for that. I have not had the time to analyze the details of what is useful within however: we could be missing important data to make this work. Expect this property to be expanded on later if possible. */
  @Property(name: 'displayObjectives')
  List<DestinyDefinitionsDirectorDestinyActivityGraphDisplayObjectiveDefinition> displayObjectives = [];
  
/* Progressions can also display on maps, but similarly to displayObjectives we appear to lack some required information and context right now. We will have to look into it later and add more data if possible. */
  @Property(name: 'displayProgressions')
  List<DestinyDefinitionsDirectorDestinyActivityGraphDisplayProgressionDefinition> displayProgressions = [];
  
/* Represents links between this Activity Graph and other ones. */
  @Property(name: 'linkedGraphs')
  List<DestinyDefinitionsDirectorDestinyLinkedGraphDefinition> linkedGraphs = [];
  
/* The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.  When entities refer to each other in Destiny content, it is this hash that they are referring to. */
  @Property(name: 'hash')
  int hash = null;
  
/* The index of the entity as it was found in the investment tables. */
  @Property(name: 'index')
  int index = null;
  
/* If this is true, then there is an entity with this identifier/type combination, but BNet is not yet allowed to show it. Sorry! */
  @Property(name: 'redacted')
  bool redacted = null;
  
  DestinyDefinitionsDirectorDestinyActivityGraphDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsDirectorDestinyActivityGraphDefinition[nodes=$nodes, artElements=$artElements, connections=$connections, displayObjectives=$displayObjectives, displayProgressions=$displayProgressions, linkedGraphs=$linkedGraphs, hash=$hash, index=$index, redacted=$redacted, ]';
  }
}

