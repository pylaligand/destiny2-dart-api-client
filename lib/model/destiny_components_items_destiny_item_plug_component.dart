part of destiny2_api.api;

@Entity()
class DestinyComponentsItemsDestinyItemPlugComponent {
  /* The hash identifier of the DestinyInventoryItemDefinition that represents this plug. */
  @Property(name: 'plugItemHash')
  int plugItemHash = null;
  
/* Sometimes, Plugs may have objectives: these are often used for flavor and display purposes, but they can be used for any arbitrary purpose (both fortunately and unfortunately). Recently (with Season 2) they were expanded in use to be used as the \"gating\" for whether the plug can be inserted at all. For instance, a Plug might be tracking the number of PVP kills you have made. It will use the parent item's data about that tracking status to determine what to show, and will generally show it using the DestinyObjectiveDefinition's progressDescription property. Refer to the plug's itemHash and objective property for more information if you would like to display even more data. */
  @Property(name: 'plugObjectives')
  List<DestinyQuestsDestinyObjectiveProgress> plugObjectives = [];
  
/* If true, this plug has met all of its insertion requirements. Big if true. */
  @Property(name: 'canInsert')
  bool canInsert = null;
  
/* If true, this plug will provide its benefits while inserted. */
  @Property(name: 'enabled')
  bool enabled = null;
  
/* If the plug cannot be inserted for some reason, this will have the indexes into the plug item definition's plug.insertionRules property, so you can show the reasons why it can't be inserted.  This list will be empty if the plug can be inserted. */
  @Property(name: 'insertFailIndexes')
  List<int> insertFailIndexes = [];
  
/* If a plug is not enabled, this will be populated with indexes into the plug item definition's plug.enabledRules property, so that you can show the reasons why it is not enabled.  This list will be empty if the plug is enabled. */
  @Property(name: 'enableFailIndexes')
  List<int> enableFailIndexes = [];
  
  DestinyComponentsItemsDestinyItemPlugComponent();

  @override
  String toString()  {
    return 'DestinyComponentsItemsDestinyItemPlugComponent[plugItemHash=$plugItemHash, plugObjectives=$plugObjectives, canInsert=$canInsert, enabled=$enabled, insertFailIndexes=$insertFailIndexes, enableFailIndexes=$enableFailIndexes, ]';
  }
}

