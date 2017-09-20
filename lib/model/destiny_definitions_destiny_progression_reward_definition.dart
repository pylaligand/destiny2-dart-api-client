part of destiny2_api.api;

@Entity()
class DestinyDefinitionsDestinyProgressionRewardDefinition {
  /* The hash identifier of the DestinyProgressionMappingDefinition that contains the progressions for which experience should be applied. */
  @Property(name: 'progressionMappingHash')
  int progressionMappingHash = null;
  
/* The amount of experience to give to each of the mapped progressions. */
  @Property(name: 'amount')
  int amount = null;
  
/* If true, the game's internal mechanisms to throttle progression should be applied. */
  @Property(name: 'applyThrottles')
  bool applyThrottles = null;
  
  DestinyDefinitionsDestinyProgressionRewardDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsDestinyProgressionRewardDefinition[progressionMappingHash=$progressionMappingHash, amount=$amount, applyThrottles=$applyThrottles, ]';
  }
}

