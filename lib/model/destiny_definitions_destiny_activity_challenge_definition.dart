part of destiny2_api.api;

@Entity()
class DestinyDefinitionsDestinyActivityChallengeDefinition {
  /* The hash for the Objective that matches this challenge. Use it to look up the DestinyObjectiveDefinition. */
  @Property(name: 'objectiveHash')
  int objectiveHash = null;
  
  DestinyDefinitionsDestinyActivityChallengeDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsDestinyActivityChallengeDefinition[objectiveHash=$objectiveHash, ]';
  }
}

