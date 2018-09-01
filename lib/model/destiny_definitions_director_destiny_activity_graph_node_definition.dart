part of destiny2_api.api;

@Entity()
class DestinyDefinitionsDirectorDestinyActivityGraphNodeDefinition {
  /* An identifier for the Activity Graph Node, only guaranteed to be unique within its parent Activity Graph. */
  @Property(name: 'nodeId')
  int nodeId = null;
  
/* The node *may* have display properties that override the active Activity's display properties. */
  @Property(name: 'overrideDisplay')
  DestinyDefinitionsCommonDestinyDisplayPropertiesDefinition overrideDisplay = null;
  
/* The position on the map for this node. */
  @Property(name: 'position')
  DestinyDefinitionsCommonDestinyPositionDefinition position = null;
  
/* The node may have various visual accents placed on it, or styles applied. These are the list of possible styles that the Node can have. The game iterates through each, looking for the first one that passes a check of the required game/character/account state in order to show that style, and then renders the node in that style. */
  @Property(name: 'featuringStates')
  List<DestinyDefinitionsDirectorDestinyActivityGraphNodeFeaturingStateDefinition> featuringStates = [];
  
/* The node may have various possible activities that could be active for it, however only one may be active at a time. See the DestinyActivityGraphNodeActivityDefinition for details. */
  @Property(name: 'activities')
  List<DestinyDefinitionsDirectorDestinyActivityGraphNodeActivityDefinition> activities = [];
  
/* Represents possible states that the graph node can be in. These are combined with some checking that happens in the game client and server to determine which state is actually active at any given time. */
  @Property(name: 'states')
  List<DestinyDefinitionsDirectorDestinyActivityGraphNodeStateEntry> states = [];
  
  DestinyDefinitionsDirectorDestinyActivityGraphNodeDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsDirectorDestinyActivityGraphNodeDefinition[nodeId=$nodeId, overrideDisplay=$overrideDisplay, position=$position, featuringStates=$featuringStates, activities=$activities, states=$states, ]';
  }
}

