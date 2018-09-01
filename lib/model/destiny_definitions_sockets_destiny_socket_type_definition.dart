part of destiny2_api.api;

@Entity()
class DestinyDefinitionsSocketsDestinySocketTypeDefinition {
  /* There are fields for this display data, but they appear to be unpopulated as of now. I am not sure where in the UI these would show if they even were populated, but I will continue to return this data in case it becomes useful. */
  @Property(name: 'displayProperties')
  DestinyDefinitionsCommonDestinyDisplayPropertiesDefinition displayProperties = null;
  
/* Defines what happens when a plug is inserted into sockets of this type. */
  @Property(name: 'insertAction')
  DestinyDefinitionsSocketsDestinyInsertPlugActionDefinition insertAction = null;
  
/* A list of Plug \"Categories\" that are allowed to be plugged into sockets of this type.  These should be compared against a given plug item's DestinyInventoryItemDefinition.plug.plugCategoryHash, which indicates the plug item's category.  If the plug's category matches any whitelisted plug, or if the whitelist is empty, it is allowed to be inserted. */
  @Property(name: 'plugWhitelist')
  List<DestinyDefinitionsSocketsDestinyPlugWhitelistEntryDefinition> plugWhitelist = [];
  

  @Property(name: 'socketCategoryHash')
  int socketCategoryHash = null;
  
/* Sometimes a socket isn't visible. These are some of the conditions under which sockets of this type are not visible. Unfortunately, the truth of visibility is much, much more complex. Best to rely on the live data for whether the socket is visible and enabled. */
  @Property(name: 'visibility')
  DestinyDestinySocketVisibility visibility = null;
  

  @Property(name: 'alwaysRandomizeSockets')
  bool alwaysRandomizeSockets = null;
  

  @Property(name: 'isPreviewEnabled')
  bool isPreviewEnabled = null;
  

  @Property(name: 'hideDuplicateReusablePlugs')
  bool hideDuplicateReusablePlugs = null;
  
/* This property indicates if the socket type determines whether Emblem icons and nameplates should be overridden by the inserted plug item's icon and nameplate. */
  @Property(name: 'overridesUiAppearance')
  bool overridesUiAppearance = null;
  

  @Property(name: 'avoidDuplicatesOnInitialization')
  bool avoidDuplicatesOnInitialization = null;
  

  @Property(name: 'currencyScalars')
  List<DestinyDefinitionsSocketsDestinySocketTypeScalarMaterialRequirementEntry> currencyScalars = [];
  
/* The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.  When entities refer to each other in Destiny content, it is this hash that they are referring to. */
  @Property(name: 'hash')
  int hash = null;
  
/* The index of the entity as it was found in the investment tables. */
  @Property(name: 'index')
  int index = null;
  
/* If this is true, then there is an entity with this identifier/type combination, but BNet is not yet allowed to show it. Sorry! */
  @Property(name: 'redacted')
  bool redacted = null;
  
  DestinyDefinitionsSocketsDestinySocketTypeDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsSocketsDestinySocketTypeDefinition[displayProperties=$displayProperties, insertAction=$insertAction, plugWhitelist=$plugWhitelist, socketCategoryHash=$socketCategoryHash, visibility=$visibility, alwaysRandomizeSockets=$alwaysRandomizeSockets, isPreviewEnabled=$isPreviewEnabled, hideDuplicateReusablePlugs=$hideDuplicateReusablePlugs, overridesUiAppearance=$overridesUiAppearance, avoidDuplicatesOnInitialization=$avoidDuplicatesOnInitialization, currencyScalars=$currencyScalars, hash=$hash, index=$index, redacted=$redacted, ]';
  }
}

