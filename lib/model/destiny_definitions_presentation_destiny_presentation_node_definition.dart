part of destiny2_api.api;

@Entity()
class DestinyDefinitionsPresentationDestinyPresentationNodeDefinition {
  
  @Property(name: 'displayProperties')
  DestinyDefinitionsCommonDestinyDisplayPropertiesDefinition displayProperties = null;
  
/* The original icon for this presentation node, before we futzed with it. */
  @Property(name: 'originalIcon')
  String originalIcon = null;
  
/* Some presentation nodes are meant to be explicitly shown on the \"root\" or \"entry\" screens for the feature to which they are related. You should use this icon when showing them on such a view, if you have a similar \"entry point\" view in your UI. If you don't have a UI, then I guess it doesn't matter either way does it? */
  @Property(name: 'rootViewIcon')
  String rootViewIcon = null;
  

  @Property(name: 'nodeType')
  DestinyDestinyPresentationNodeType nodeType = null;
  
/* Indicates whether this presentation node's state is determined on a per-character or on an account-wide basis. */
  @Property(name: 'scope')
  DestinyDestinyScope scope = null;
  
/* If this presentation node shows a related objective (for instance, if it tracks the progress of its children), the objective being tracked is indicated here. */
  @Property(name: 'objectiveHash')
  int objectiveHash = null;
  
/* If this presentation node has an associated \"Record\" that you can accomplish for completing its children, this is the identifier of that Record. */
  @Property(name: 'completionRecordHash')
  int completionRecordHash = null;
  
/* The child entities contained by this presentation node. */
  @Property(name: 'children')
  DestinyDefinitionsPresentationDestinyPresentationNodeChildrenBlock children = null;
  
/* A hint for how to display this presentation node when it's shown in a list. */
  @Property(name: 'displayStyle')
  DestinyDestinyPresentationDisplayStyle displayStyle = null;
  
/* A hint for how to display this presentation node when it's shown in its own detail screen. */
  @Property(name: 'screenStyle')
  DestinyDestinyPresentationScreenStyle screenStyle = null;
  
/* The requirements for being able to interact with this presentation node and its children. */
  @Property(name: 'requirements')
  DestinyDefinitionsPresentationDestinyPresentationNodeRequirementsBlock requirements = null;
  
/* If this presentation node has children, but the game doesn't let you inspect the details of those children, that is indicated here. */
  @Property(name: 'disableChildSubscreenNavigation')
  bool disableChildSubscreenNavigation = null;
  
/* A quick reference to presentation nodes that have this node as a child. (presentation nodes can be parented under multiple parents) */
  @Property(name: 'parentNodeHashes')
  List<int> parentNodeHashes = [];
  
/* The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.  When entities refer to each other in Destiny content, it is this hash that they are referring to. */
  @Property(name: 'hash')
  int hash = null;
  
/* The index of the entity as it was found in the investment tables. */
  @Property(name: 'index')
  int index = null;
  
/* If this is true, then there is an entity with this identifier/type combination, but BNet is not yet allowed to show it. Sorry! */
  @Property(name: 'redacted')
  bool redacted = null;
  
  DestinyDefinitionsPresentationDestinyPresentationNodeDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsPresentationDestinyPresentationNodeDefinition[displayProperties=$displayProperties, originalIcon=$originalIcon, rootViewIcon=$rootViewIcon, nodeType=$nodeType, scope=$scope, objectiveHash=$objectiveHash, completionRecordHash=$completionRecordHash, children=$children, displayStyle=$displayStyle, screenStyle=$screenStyle, requirements=$requirements, disableChildSubscreenNavigation=$disableChildSubscreenNavigation, parentNodeHashes=$parentNodeHashes, hash=$hash, index=$index, redacted=$redacted, ]';
  }
}

