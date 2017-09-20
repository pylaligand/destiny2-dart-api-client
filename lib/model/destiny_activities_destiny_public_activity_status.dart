part of destiny2_api.api;

@Entity()
class DestinyActivitiesDestinyPublicActivityStatus {
  /* Active Challenges for the activity, if any - represented as hashes for DestinyObjectiveDefinitions. */
  @Property(name: 'challengeObjectiveHashes')
  List<int> challengeObjectiveHashes = [];
  
/* The active modifiers on this activity, if any - represented as hashes for DestinyActivityModifierDefinitions. */
  @Property(name: 'modifierHashes')
  List<int> modifierHashes = [];
  
/* If the activity itself provides any specific \"mock\" rewards, this will be the items and their quantity.  Why \"mock\", you ask? Because these are the rewards as they are represented in the tooltip of the Activity.  These are often pointers to fake items that look good in a tooltip, but represent an abstract concept of what you will get for a reward rather than the specific items you may obtain. */
  @Property(name: 'rewardTooltipItems')
  List<DestinyDestinyItemQuantity> rewardTooltipItems = [];
  
  DestinyActivitiesDestinyPublicActivityStatus();

  @override
  String toString()  {
    return 'DestinyActivitiesDestinyPublicActivityStatus[challengeObjectiveHashes=$challengeObjectiveHashes, modifierHashes=$modifierHashes, rewardTooltipItems=$rewardTooltipItems, ]';
  }
}

