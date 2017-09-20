part of destiny2_api.api;

@Entity()
class DestinyDefinitionsDestinyTalentNodeDefinition {
  /* The index into the DestinyTalentGridDefinition's \"nodes\" property where this node is located. Used to uniquely identify the node within the Talent Grid. Note that this is content version dependent: make sure you have the latest version of content before trying to use these properties. */
  @Property(name: 'nodeIndex')
  int nodeIndex = null;
  
/* The hash identifier for the node, which unfortunately is also content version dependent but can be (and ideally, should be) used instead of the nodeIndex to uniquely identify the node.  The two exist side-by-side for backcompat reasons due to the Great Talent Node Restructuring of Destiny 1, and I ran out of time to remove one of them and standardize on the other. Sorry! */
  @Property(name: 'nodeHash')
  int nodeHash = null;
  
/* The visual \"row\" where the node should be shown in the UI. If negative, then the node is hidden. */
  @Property(name: 'row')
  int row = null;
  
/* The visual \"column\" where the node should be shown in the UI. If negative, the node is hidden. */
  @Property(name: 'column')
  int column = null;
  
/* Indexes into the DestinyTalentGridDefinition.nodes property for any nodes that must be activated before this one is allowed to be activated.  I would have liked to change this to hashes for Destiny 2, but we have run out of time. */
  @Property(name: 'prerequisiteNodeIndexes')
  List<int> prerequisiteNodeIndexes = [];
  
/* At one point, Talent Nodes supported the idea of \"Binary Pairs\": nodes that overlapped each other visually, and where activating one deactivated the other. They ended up not being used, mostly because Exclusive Sets are *almost* a superset of this concept, but the potential for it to be used still exists in theory.  If this is ever used, this will be the index into the DestinyTalentGridDefinition.nodes property for the node that is the binary pair match to this node. Activating one deactivates the other. */
  @Property(name: 'binaryPairNodeIndex')
  int binaryPairNodeIndex = null;
  
/* If true, this node will automatically unlock when the Talent Grid's level reaches the required level of the current step of this node. */
  @Property(name: 'autoUnlocks')
  bool autoUnlocks = null;
  
/* At one point, Nodes were going to be able to be activated multiple times, changing the current step and potentially piling on multiple effects from the previously activated steps. This property would indicate if the last step could be activated multiple times.   This is not currently used, but it isn't out of the question that this could end up being used again in a theoretical future. */
  @Property(name: 'lastStepRepeats')
  bool lastStepRepeats = null;
  
/* If this is true, the node's step is determined randomly rather than the first step being chosen. */
  @Property(name: 'isRandom')
  bool isRandom = null;
  
/* At one point, you were going to be able to repurchase talent nodes that had random steps, to \"re-roll\" the current step of the node (and thus change the properties of your item). This was to be the activation requirement for performing that re-roll.  The system still exists to do this, as far as I know, so it may yet come back around! */
  @Property(name: 'randomActivationRequirement')
  Object randomActivationRequirement = null;
  
/* If this is true, the node can be \"re-rolled\" to acquire a different random current step. This is not used, but still exists for a theoretical future of talent grids. */
  @Property(name: 'isRandomRepurchasable')
  bool isRandomRepurchasable = null;
  
/* At this point, \"steps\" have been obfuscated into conceptual entities, aggregating the underlying notions of \"properties\" and \"true steps\".  If you need to know a step as it truly exists - such as when recreating Node logic when processing Vendor data - you'll have to use the \"realSteps\" property below. */
  @Property(name: 'steps')
  List<DestinyDefinitionsDestinyNodeStepDefinition> steps = [];
  
/* The nodeHash values for nodes that are in an Exclusive Set with this node.  See DestinyTalentGridDefinition.exclusiveSets for more info about exclusive sets.  Again, note that these are nodeHashes and *not* nodeIndexes. */
  @Property(name: 'exclusiveWithNodeHashes')
  List<int> exclusiveWithNodeHashes = [];
  
/* If the node's step is randomly selected, this is the amount of the Talent Grid's progression experience at which the progression bar for the node should be shown. */
  @Property(name: 'randomStartProgressionBarAtProgression')
  int randomStartProgressionBarAtProgression = null;
  
/* A string identifier for a custom visual layout to apply to this talent node. Unfortunately, we do not have any data for rendering these custom layouts. It will be up to you to interpret these strings and change your UI if you want to have custom UI matching these layouts. */
  @Property(name: 'layoutIdentifier')
  String layoutIdentifier = null;
  
/* As of Destiny 2, nodes can exist as part of \"Exclusive Groups\". These differ from exclusive sets in that, within the group, many nodes can be activated. But the act of activating any node in the group will cause \"opposing\" nodes (nodes in groups that are not allowed to be activated at the same time as this group) to deactivate.  See DestinyTalentExclusiveGroup for more information on the details. This is an identifier for this node's group, if it is part of one. */
  @Property(name: 'groupHash')
  int groupHash = null;
  
/* Talent nodes can be associated with a piece of Lore, generally rendered in a tooltip. This is the hash identifier of the lore element to show, if there is one to be show. */
  @Property(name: 'loreHash')
  int loreHash = null;
  
/* Comes from the talent grid node style: this identifier should be used to determine how to render the node in the UI. */
  @Property(name: 'nodeStyleIdentifier')
  String nodeStyleIdentifier = null;
  
/* Comes from the talent grid node style: if true, then this node should be ignored for determining whether the grid is complete. */
  @Property(name: 'ignoreForCompletion')
  bool ignoreForCompletion = null;
  
  DestinyDefinitionsDestinyTalentNodeDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsDestinyTalentNodeDefinition[nodeIndex=$nodeIndex, nodeHash=$nodeHash, row=$row, column=$column, prerequisiteNodeIndexes=$prerequisiteNodeIndexes, binaryPairNodeIndex=$binaryPairNodeIndex, autoUnlocks=$autoUnlocks, lastStepRepeats=$lastStepRepeats, isRandom=$isRandom, randomActivationRequirement=$randomActivationRequirement, isRandomRepurchasable=$isRandomRepurchasable, steps=$steps, exclusiveWithNodeHashes=$exclusiveWithNodeHashes, randomStartProgressionBarAtProgression=$randomStartProgressionBarAtProgression, layoutIdentifier=$layoutIdentifier, groupHash=$groupHash, loreHash=$loreHash, nodeStyleIdentifier=$nodeStyleIdentifier, ignoreForCompletion=$ignoreForCompletion, ]';
  }
}

