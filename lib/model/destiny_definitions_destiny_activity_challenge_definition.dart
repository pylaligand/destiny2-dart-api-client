part of destiny2_api.api;

@Entity()
class DestinyDefinitionsDestinyActivityChallengeDefinition {
  /* The hash for the Objective that matches this challenge. Use it to look up the DestinyObjectiveDefinition. */
  @Property(name: 'objectiveHash')
  int objectiveHash = null;
  
/* The rewards as they're represented in the UI. Note that they generally link to \"dummy\" items that give a summary of rewards rather than direct, real items themselves.  If the quantity is 0, don't show the quantity. */
  @Property(name: 'dummyRewards')
  List<DestinyDestinyItemQuantity> dummyRewards = [];
  
  DestinyDefinitionsDestinyActivityChallengeDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsDestinyActivityChallengeDefinition[objectiveHash=$objectiveHash, dummyRewards=$dummyRewards, ]';
  }
}

