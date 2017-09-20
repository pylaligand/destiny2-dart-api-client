part of destiny2_api.api;

@Entity()
class DestinyComponentsItemsDestinyItemPlugComponent {
  /* If the plug cannot be inserted for some reason, this will have the indexes into the plug item definition's plug.insertionRules property, so you can show the reasons why it can't be inserted.  This list will be empty if the plug can be inserted. */
  @Property(name: 'insertFailIndexes')
  List<int> insertFailIndexes = [];
  
/* If a plug is not enabled, this will be populated with indexes into the plug item definition's plug.enabledRules property, so that you can show the reasons why it is not enabled.  This list will be empty if the plug is enabled. */
  @Property(name: 'enableFailIndexes')
  List<int> enableFailIndexes = [];
  
  DestinyComponentsItemsDestinyItemPlugComponent();

  @override
  String toString()  {
    return 'DestinyComponentsItemsDestinyItemPlugComponent[insertFailIndexes=$insertFailIndexes, enableFailIndexes=$enableFailIndexes, ]';
  }
}

