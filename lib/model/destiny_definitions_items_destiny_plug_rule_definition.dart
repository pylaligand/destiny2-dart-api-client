part of destiny2_api.api;

@Entity()
class DestinyDefinitionsItemsDestinyPlugRuleDefinition {
  /* The localized string to show if this rule fails. */
  @Property(name: 'failureMessage')
  String failureMessage = null;
  
  DestinyDefinitionsItemsDestinyPlugRuleDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsItemsDestinyPlugRuleDefinition[failureMessage=$failureMessage, ]';
  }
}

