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
  
/* Plugs can have arbitrary, UI-defined identifiers that the UI designers use to determine the style applied to plugs. Unfortunately, we have neither a definitive list of these labels nor advance warning of when new labels might be applied or how that relates to how they get rendered. If you want to, you can refer to known labels to change your own styles: but know that new ones can be created arbitrarily, and we have no way of associating the labels with any specific UI style guidance... you'll have to piece that together on your end. Or do what we do, and just show plugs more generically, without specialized styles. */
  @Property(name: 'uiPlugLabel')
  String uiPlugLabel = null;
  

  @Property(name: 'plugStyle')
  DestinyPlugUiStyles plugStyle = null;
  
/* If TRUE, the plug doesn't actually convey any benefit: it only exists to show information in the UI. */
  @Property(name: 'isPseudoPlug')
  bool isPseudoPlug = null;
  
/* Indicates the rules about when this plug can be used. See the PlugAvailabilityMode enumeration for more information! */
  @Property(name: 'plugAvailability')
  DestinyPlugAvailabilityMode plugAvailability = null;
  
/* If the plug meets certain state requirements, it may have an alternative label applied to it. This is the alternative label that will be applied in such a situation. */
  @Property(name: 'alternateUiPlugLabel')
  String alternateUiPlugLabel = null;
  
/* The alternate plug of the plug: only applies when the item is in states that only the server can know about and control, unfortunately. See AlternateUiPlugLabel for the related label info. */
  @Property(name: 'alternatePlugStyle')
  DestinyPlugUiStyles alternatePlugStyle = null;
  
/* If TRUE, this plug is used for UI display purposes only, and doesn't have any interesting effects of its own. */
  @Property(name: 'isDummyPlug')
  bool isDummyPlug = null;
  
  DestinyDefinitionsItemsDestinyItemPlugDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsItemsDestinyItemPlugDefinition[insertionRules=$insertionRules, plugCategoryIdentifier=$plugCategoryIdentifier, plugCategoryHash=$plugCategoryHash, onActionRecreateSelf=$onActionRecreateSelf, insertionMaterialRequirementHash=$insertionMaterialRequirementHash, previewItemOverrideHash=$previewItemOverrideHash, enabledMaterialRequirementHash=$enabledMaterialRequirementHash, enabledRules=$enabledRules, uiPlugLabel=$uiPlugLabel, plugStyle=$plugStyle, isPseudoPlug=$isPseudoPlug, plugAvailability=$plugAvailability, alternateUiPlugLabel=$alternateUiPlugLabel, alternatePlugStyle=$alternatePlugStyle, isDummyPlug=$isDummyPlug, ]';
  }
}

