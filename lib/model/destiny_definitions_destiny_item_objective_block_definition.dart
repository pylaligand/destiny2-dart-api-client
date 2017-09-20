part of destiny2_api.api;

@Entity()
class DestinyDefinitionsDestinyItemObjectiveBlockDefinition {
  /* The hashes to Objectives (DestinyObjectiveDefinition) that are part of this Quest Step, in the order that they should be rendered. */
  @Property(name: 'objectiveHashes')
  List<int> objectiveHashes = [];
  
/* For every entry in objectiveHashes, there is a corresponding entry in this array at the same index. If the objective is meant to be associated with a specific DestinyActivityDefinition, there will be a valid hash at that index. Otherwise, it will be invalid (0). */
  @Property(name: 'displayActivityHashes')
  List<int> displayActivityHashes = [];
  
/* If True, all objectives must be completed for the step to be completed. If False, any one objective can be completed for the step to be completed. */
  @Property(name: 'requireFullObjectiveCompletion')
  bool requireFullObjectiveCompletion = null;
  
/* The hash for the DestinyInventoryItemDefinition representing the Quest to which this Quest Step belongs. */
  @Property(name: 'questlineItemHash')
  int questlineItemHash = null;
  
/* The localized string for narrative text related to this quest step, if any. */
  @Property(name: 'narrative')
  String narrative = null;
  
/* The localized string describing an action to be performed associated with the objectives, if any. */
  @Property(name: 'objectiveVerbName')
  String objectiveVerbName = null;
  
/* The identifier for the type of quest being performed, if any. Not associated with any fixed definition, yet. */
  @Property(name: 'questTypeIdentifier')
  String questTypeIdentifier = null;
  
/* A hashed value for the questTypeIdentifier, because apparently I like to be redundant. */
  @Property(name: 'questTypeHash')
  int questTypeHash = null;
  
  DestinyDefinitionsDestinyItemObjectiveBlockDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsDestinyItemObjectiveBlockDefinition[objectiveHashes=$objectiveHashes, displayActivityHashes=$displayActivityHashes, requireFullObjectiveCompletion=$requireFullObjectiveCompletion, questlineItemHash=$questlineItemHash, narrative=$narrative, objectiveVerbName=$objectiveVerbName, questTypeIdentifier=$questTypeIdentifier, questTypeHash=$questTypeHash, ]';
  }
}

