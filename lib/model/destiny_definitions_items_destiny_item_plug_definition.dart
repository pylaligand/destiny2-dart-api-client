part of destiny2_api.api;

@Entity()
class DestinyDefinitionsItemsDestinyItemPlugDefinition {
  /* The rules around when this plug can be inserted into a socket, aside from the socket's individual restrictions.  The live data DestinyItemPlugComponent.insertFailIndexes will be an index into this array, so you can pull out the failure strings appropriate for the user. */
  @Property(name: 'insertionRules')
  List<DestinyDefinitionsItemsDestinyPlugRuleDefinition> insertionRules = [];
  
/* The string identifier for the plug's category. Use the socket's DestinySocketTypeDefinition.plugWhitelist to determine whether this plug can be inserted into the socket. */
  @Property(name: 'plugCategoryIdentifier')
  String plugCategoryIdentifier = null;
  
/* The hash for the plugCategoryIdentifier. You can use this instead if you wish: I put both in the definition for debugging purposes. */
  @Property(name: 'plugCategoryHash')
  int plugCategoryHash = null;
  
/* If you successfully socket the item, this will determine whether or not you get \"refunded\" on the plug. */
  @Property(name: 'onActionRecreateSelf')
  bool onActionRecreateSelf = null;
  
/* If inserting this plug requires materials, this is the hash identifier for looking up the DestinyMaterialRequirementSetDefinition for those requirements. */
  @Property(name: 'insertionMaterialRequirementHash')
  int insertionMaterialRequirementHash = null;
  
/* In the game, if you're inspecting a plug item directly, this will be the item shown with the plug attached. Look up the DestinyInventoryItemDefinition for this hash for the item. */
  @Property(name: 'previewItemOverrideHash')
  int previewItemOverrideHash = null;
  
/* It's not enough for the plug to be inserted. It has to be enabled as well. For it to be enabled, it may require materials. This is the hash identifier for the DestinyMaterialRequirementSetDefinition for those requirements, if there is one. */
  @Property(name: 'enabledMaterialRequirementHash')
  int enabledMaterialRequirementHash = null;
  
/* The rules around whether the plug, once inserted, is enabled and providing its benefits.  The live data DestinyItemPlugComponent.enableFailIndexes will be an index into this array, so you can pull out the failure strings appropriate for the user. */
  @Property(name: 'enabledRules')
  List<DestinyDefinitionsItemsDestinyPlugRuleDefinition> enabledRules = [];
  
  DestinyDefinitionsItemsDestinyItemPlugDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsItemsDestinyItemPlugDefinition[insertionRules=$insertionRules, plugCategoryIdentifier=$plugCategoryIdentifier, plugCategoryHash=$plugCategoryHash, onActionRecreateSelf=$onActionRecreateSelf, insertionMaterialRequirementHash=$insertionMaterialRequirementHash, previewItemOverrideHash=$previewItemOverrideHash, enabledMaterialRequirementHash=$enabledMaterialRequirementHash, enabledRules=$enabledRules, ]';
  }
}

