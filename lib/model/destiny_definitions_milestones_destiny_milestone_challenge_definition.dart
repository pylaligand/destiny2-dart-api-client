part of destiny2_api.api;

@Entity()
class DestinyDefinitionsMilestonesDestinyMilestoneChallengeDefinition {
  /* The challenge related to this milestone. */
  @Property(name: 'challengeObjectiveHash')
  int challengeObjectiveHash = null;
  
  DestinyDefinitionsMilestonesDestinyMilestoneChallengeDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsMilestonesDestinyMilestoneChallengeDefinition[challengeObjectiveHash=$challengeObjectiveHash, ]';
  }
}

