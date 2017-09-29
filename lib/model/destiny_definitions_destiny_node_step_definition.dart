part of destiny2_api.api;

@Entity()
class DestinyDefinitionsDestinyNodeStepDefinition {
  /* These are the display properties actually used to render the Talent Node. The currently active step's displayProperties are shown. */
  @Property(name: 'displayProperties')
  DestinyDefinitionsCommonDestinyDisplayPropertiesDefinition displayProperties = null;
  
/* The index of this step in the list of Steps on the Talent Node.  Unfortunately, this is the closest thing we have to an identifier for the Step: steps are not provided a content version agnostic identifier. This means that, when you are dealing with talent nodes, you will need to first ensure that you have the latest version of content. */
  @Property(name: 'stepIndex')
  int stepIndex = null;
  
/* The hash of this node step. Unfortunately, while it can be used to uniquely identify the step within a node, it is also content version dependent and should not be relied on without ensuring you have the latest vesion of content. */
  @Property(name: 'nodeStepHash')
  int nodeStepHash = null;
  
/* If you can interact with this node in some way, this is the localized description of that interaction. */
  @Property(name: 'interactionDescription')
  String interactionDescription = null;
  
/* An enum representing a damage type granted by activating this step, if any. */
  @Property(name: 'damageType')
  DestinyDamageType damageType = null;
  
/* If the step provides a damage type, this will be the hash identifier used to look up the damage type's DestinyDamageTypeDefinition. */
  @Property(name: 'damageTypeHash')
  int damageTypeHash = null;
  
/* If the step has requirements for activation (they almost always do, if nothing else than for the Talent Grid's Progression to have reached a certain level), they will be defined here. */
  @Property(name: 'activationRequirement')
  DestinyDefinitionsDestinyNodeActivationRequirement activationRequirement = null;
  
/* There was a time when talent nodes could be activated multiple times, and the effects of subsequent Steps would be compounded on each other, essentially \"upgrading\" the node. We have moved away from this, but theoretically the capability still exists.  I continue to return this in case it is used in the future: if true and this step is the current step in the node, you are allowed to activate the node a second time to receive the benefits of the next step in the node, which will then become the active step. */
  @Property(name: 'canActivateNextStep')
  bool canActivateNextStep = null;
  
/* The stepIndex of the next step in the talent node, or -1 if this is the last step or if the next step to be chosen is random.  This doesn't really matter anymore unless canActivateNextStep begins to be used again. */
  @Property(name: 'nextStepIndex')
  int nextStepIndex = null;
  
/* If true, the next step to be chosen is random, and if you're allowed to activate the next step. (if canActivateNextStep = true) */
  @Property(name: 'isNextStepRandom')
  bool isNextStepRandom = null;
  
/* The list of hash identifiers for Perks (DestinySandboxPerkDefinition) that are applied when this step is active. Perks provide a variety of benefits and modifications - examine DestinySandboxPerkDefinition to learn more. */
  @Property(name: 'perkHashes')
  List<int> perkHashes = [];
  
/* When the Talent Grid's progression reaches this value, the circular \"progress bar\" that surrounds the talent node should be shown.  This also indicates the lower bound of said progress bar, with the upper bound being the progress required to reach activationRequirement.gridLevel. (at some point I should precalculate the upper bound and put it in the definition to save people time) */
  @Property(name: 'startProgressionBarAtProgress')
  int startProgressionBarAtProgress = null;
  
/* When the step provides stat benefits on the item or character, this is the list of hash identifiers for stats (DestinyStatDefinition) that are provided. */
  @Property(name: 'statHashes')
  List<int> statHashes = [];
  
/* If this is true, the step affects the item's Quality in some way. See DestinyInventoryItemDefinition for more information about the meaning of Quality. I already made a joke about Zen and the Art of Motorcycle Maintenance elsewhere in the documentation, so I will avoid doing it again. Oops too late */
  @Property(name: 'affectsQuality')
  bool affectsQuality = null;
  
/* In Destiny 1, the Armory's Perk Filtering was driven by a concept of TalentNodeStepGroups: categorizations of talent nodes based on their functionality. While the Armory isn't a BNet-facing thing for now, and the new Armory will need to account for Sockets rather than Talent Nodes, this categorization capability feels useful enough to still keep around. */
  @Property(name: 'stepGroups')
  DestinyDefinitionsDestinyTalentNodeStepGroups stepGroups = null;
  
/* If true, this step can affect the level of the item. See DestinyInventoryItemDefintion for more information about item levels and their effect on stats. */
  @Property(name: 'affectsLevel')
  bool affectsLevel = null;
  
/* If this step is activated, this will be a list of information used to replace socket items with new Plugs. See DestinyInventoryItemDefinition for more information about sockets and plugs. */
  @Property(name: 'socketReplacements')
  List<DestinyDefinitionsDestinyNodeSocketReplaceResponse> socketReplacements = [];
  
  DestinyDefinitionsDestinyNodeStepDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsDestinyNodeStepDefinition[displayProperties=$displayProperties, stepIndex=$stepIndex, nodeStepHash=$nodeStepHash, interactionDescription=$interactionDescription, damageType=$damageType, damageTypeHash=$damageTypeHash, activationRequirement=$activationRequirement, canActivateNextStep=$canActivateNextStep, nextStepIndex=$nextStepIndex, isNextStepRandom=$isNextStepRandom, perkHashes=$perkHashes, startProgressionBarAtProgress=$startProgressionBarAtProgress, statHashes=$statHashes, affectsQuality=$affectsQuality, stepGroups=$stepGroups, affectsLevel=$affectsLevel, socketReplacements=$socketReplacements, ]';
  }
}

