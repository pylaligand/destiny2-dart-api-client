part of destiny2_api.api;

@Entity()
class DestinyDefinitionsDestinyProgressionStepDefinition {
  /* Very rarely, Progressions will have localized text describing the Level of the progression. This will be that localized text, if it exists. Otherwise, the standard appears to be to simply show the level numerically. */
  @Property(name: 'stepName')
  String stepName = null;
  
/* This appears to be, when you \"level up\", whether a visual effect will display and on what entity. See DestinyProgressionStepDisplayEffect for slightly more info. */
  @Property(name: 'displayEffectType')
  DestinyDestinyProgressionStepDisplayEffect displayEffectType = null;
  
/* The total amount of progression points/\"experience\" you will need to initially reach this step. If this is the last step and the progression is repeating indefinitely (DestinyProgressionDefinition.repeatLastStep), this will also be the progress needed to level it up further by repeating this step again. */
  @Property(name: 'progressTotal')
  int progressTotal = null;
  
/* A listing of items rewarded as a result of reaching this level. */
  @Property(name: 'rewardItems')
  List<DestinyDestinyItemQuantity> rewardItems = [];
  
  DestinyDefinitionsDestinyProgressionStepDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsDestinyProgressionStepDefinition[stepName=$stepName, displayEffectType=$displayEffectType, progressTotal=$progressTotal, rewardItems=$rewardItems, ]';
  }
}

