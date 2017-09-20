part of destiny2_api.api;

@Entity()
class DestinyDefinitionsDestinyItemActionBlockDefinition {
  /* Localized text for the verb of the action being performed. */
  @Property(name: 'verbName')
  String verbName = null;
  
/* Localized text describing the action being performed. */
  @Property(name: 'verbDescription')
  String verbDescription = null;
  
/* The content has this property, however it's not entirely clear how it is used. */
  @Property(name: 'isPositive')
  bool isPositive = null;
  
/* If the action has an overlay screen associated with it, this is the name of that screen. Unfortunately, we cannot return the screen's data itself. */
  @Property(name: 'overlayScreenName')
  String overlayScreenName = null;
  
/* The icon associated with the overlay screen for the action, if any. */
  @Property(name: 'overlayIcon')
  String overlayIcon = null;
  
/* The number of seconds to delay before allowing this action to be performed again. */
  @Property(name: 'requiredCooldownSeconds')
  int requiredCooldownSeconds = null;
  
/* If the action requires other items to exist or be destroyed, this is the list of those items and requirements. */
  @Property(name: 'requiredItems')
  List<DestinyDefinitionsDestinyItemActionRequiredItemDefinition> requiredItems = [];
  
/* If performing this action earns you Progression, this is the list of progressions and values granted for those progressions by performing this action. */
  @Property(name: 'progressionRewards')
  List<DestinyDefinitionsDestinyProgressionRewardDefinition> progressionRewards = [];
  
/* The internal identifier for the action. */
  @Property(name: 'actionTypeLabel')
  String actionTypeLabel = null;
  
/* Theoretically, an item could have a localized string for a hint about the location in which the action should be performed. In practice, no items yet have this property. */
  @Property(name: 'requiredLocation')
  String requiredLocation = null;
  
/* The identifier hash for the Cooldown associated with this action. We have not pulled this data yet for you to have more data to use for cooldowns. */
  @Property(name: 'requiredCooldownHash')
  int requiredCooldownHash = null;
  
/* If true, the item is deleted when the action completes. */
  @Property(name: 'deleteOnAction')
  bool deleteOnAction = null;
  
/* If true, the entire stack is deleted when the action completes. */
  @Property(name: 'consumeEntireStack')
  bool consumeEntireStack = null;
  
/* If true, this action will be performed as soon as you earn this item. Some rewards work this way, providing you a single item to pick up from a reward-granting vendor in-game and then immediately consuming itself to provide you multiple items. */
  @Property(name: 'useOnAcquire')
  bool useOnAcquire = null;
  
  DestinyDefinitionsDestinyItemActionBlockDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsDestinyItemActionBlockDefinition[verbName=$verbName, verbDescription=$verbDescription, isPositive=$isPositive, overlayScreenName=$overlayScreenName, overlayIcon=$overlayIcon, requiredCooldownSeconds=$requiredCooldownSeconds, requiredItems=$requiredItems, progressionRewards=$progressionRewards, actionTypeLabel=$actionTypeLabel, requiredLocation=$requiredLocation, requiredCooldownHash=$requiredCooldownHash, deleteOnAction=$deleteOnAction, consumeEntireStack=$consumeEntireStack, useOnAcquire=$useOnAcquire, ]';
  }
}

