part of destiny2_api.api;

@Entity()
class DestinyDestinyTalentNode {
  /* The index of the Talent Node being referred to (an index into DestinyTalentGridDefinition.nodes[]). CONTENT VERSION DEPENDENT. */
  @Property(name: 'nodeIndex')
  int nodeIndex = null;
  
/* The hash of the Talent Node being referred to (in DestinyTalentGridDefinition.nodes). Deceptively CONTENT VERSION DEPENDENT. We have no guarantee of the hash's immutability between content versions. */
  @Property(name: 'nodeHash')
  int nodeHash = null;
  
/* An DestinyTalentNodeState enum value indicating the node's state: whether it can be activated or swapped, and why not if neither can be performed. */
  @Property(name: 'state')
  DestinyDestinyTalentNodeState state = null;
  
/* If true, the node is activated: it's current step then provides its benefits. */
  @Property(name: 'isActivated')
  bool isActivated = null;
  
/* The currently relevant Step for the node. It is this step that has rendering data for the node and the benefits that are provided if the node is activated. (the actual rules for benefits provided are extremely complicated in theory, but with how Talent Grids are being used in Destiny 2 you don't have to worry about a lot of those old Destiny 1 rules.) This is an index into: DestinyTalentGridDefinition.nodes[nodeIndex].steps[stepIndex] */
  @Property(name: 'stepIndex')
  int stepIndex = null;
  
/* If the node has material requirements to be activated, this is the list of those requirements. */
  @Property(name: 'materialsToUpgrade')
  List<DestinyDefinitionsDestinyMaterialRequirement> materialsToUpgrade = [];
  
/* The progression level required on the Talent Grid in order to be able to activate this talent node. Talent Grids have their own Progression - similar to Character Level, but in this case it is experience related to the item itself. */
  @Property(name: 'activationGridLevel')
  int activationGridLevel = null;
  
/* If you want to show a progress bar or circle for how close this talent node is to being activate-able, this is the percentage to show. It follows the node's underlying rules about when the progress bar should first show up, and when it should be filled. */
  @Property(name: 'progressPercent')
  double progressPercent = null;
  
/* Whether or not the talent node is actually visible in the game's UI. Whether you want to show it in your own UI is up to you! I'm not gonna tell you who to sock it to. */
  @Property(name: 'hidden')
  bool hidden = null;
  
/* This property has some history. A talent grid can provide stats on both the item it's related to and the character equipping the item. This returns data about those stat bonuses. */
  @Property(name: 'nodeStatsBlock')
  DestinyDestinyTalentNodeStatBlock nodeStatsBlock = null;
  
  DestinyDestinyTalentNode();

  @override
  String toString()  {
    return 'DestinyDestinyTalentNode[nodeIndex=$nodeIndex, nodeHash=$nodeHash, state=$state, isActivated=$isActivated, stepIndex=$stepIndex, materialsToUpgrade=$materialsToUpgrade, activationGridLevel=$activationGridLevel, progressPercent=$progressPercent, hidden=$hidden, nodeStatsBlock=$nodeStatsBlock, ]';
  }
}

