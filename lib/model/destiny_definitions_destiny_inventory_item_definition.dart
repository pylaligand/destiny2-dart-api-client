part of destiny2_api.api;

@Entity()
class DestinyDefinitionsDestinyInventoryItemDefinition {
  
  @Property(name: 'displayProperties')
  DestinyDefinitionsCommonDestinyDisplayPropertiesDefinition displayProperties = null;
  
/* A secondary icon associated with the item. Currently this is used in very context specific applications, such as Emblem Nameplates. */
  @Property(name: 'secondaryIcon')
  String secondaryIcon = null;
  
/* Pulled from the secondary icon, this is the \"secondary background\" of the secondary icon. Confusing? Sure, that's why I call it \"overlay\" here: because as far as it's been used thus far, it has been for an optional overlay image. We'll see if that holds up, but at least for now it explains what this image is a bit better. */
  @Property(name: 'secondaryOverlay')
  String secondaryOverlay = null;
  
/* Pulled from the Secondary Icon, this is the \"special\" background for the item. For Emblems, this is the background image used on the Details view: but it need not be limited to that for other types of items. */
  @Property(name: 'secondarySpecial')
  String secondarySpecial = null;
  
/* If we were able to acquire an in-game screenshot for the item, the path to that screenshot will be returned here. Note that not all items have screenshots: particularly not any non-equippable items. */
  @Property(name: 'screenshot')
  String screenshot = null;
  
/* The localized title/name of the item's type. This can be whatever the designers want, and has no guarantee of consistency between items. */
  @Property(name: 'itemTypeDisplayName')
  String itemTypeDisplayName = null;
  
/* It became a common enough pattern in our UI to show Item Type and Tier combined into a single localized string that I'm just going to go ahead and start pre-creating these for items. */
  @Property(name: 'itemTypeAndTierDisplayName')
  String itemTypeAndTierDisplayName = null;
  
/* In theory, it is a localized string telling you about how you can find the item. I really wish this was more consistent. Many times, it has nothing. Sometimes, it's instead a more narrative-forward description of the item. Which is cool, and I wish all properties had that data, but it should really be its own property. */
  @Property(name: 'displaySource')
  String displaySource = null;
  
/* An identifier that the game UI uses to determine what type of tooltip to show for the item. These have no corresponding definitions that BNet can link to: so it'll be up to you to interpret and display your UI differently according to these styles (or ignore it). */
  @Property(name: 'tooltipStyle')
  String tooltipStyle = null;
  
/* If the item can be \"used\", this block will be non-null, and will have data related to the action performed when using the item. (Guess what? 99% of the time, this action is \"dismantle\". Shocker) */
  @Property(name: 'action')
  Object action = null;
  
/* If this item can exist in an inventory, this block will be non-null. In practice, every item that currently exists has one of these blocks. But note that it is not necessarily guaranteed. */
  @Property(name: 'inventory')
  Object inventory = null;
  
/* If this item is a quest, this block will be non-null. In practice, I wish I had called this the Quest block, but at the time it wasn't clear to me whether it would end up being used for purposes other than quests. It will contain data about the steps in the quest, and mechanics we can use for displaying and tracking the quest. */
  @Property(name: 'setData')
  Object setData = null;
  
/* If this item can have stats (such as a weapon, armor, or vehicle), this block will be non-null and populated with the stats found on the item. */
  @Property(name: 'stats')
  Object stats = null;
  
/* If this item can be equipped, this block will be non-null and will be populated with the conditions under which it can be equipped. */
  @Property(name: 'equippingBlock')
  Object equippingBlock = null;
  
/* If this item can be rendered, this block will be non-null and will be populated with rendering information. */
  @Property(name: 'translationBlock')
  Object translationBlock = null;
  
/* If this item can be Used or Acquired to gain other items (for instance, how Eververse Boxes can be consumed to get items from the box), this block will be non-null and will give summary information for the items that can be acquired. */
  @Property(name: 'preview')
  Object preview = null;
  
/* If this item can have a level or stats, this block will be non-null and will be populated with default quality (item level, \"quality\", and infusion) data. See the block for more details, there's often less upfront information in D2 so you'll want to be aware of how you use quality and item level on the definition level now. */
  @Property(name: 'quality')
  Object quality = null;
  
/* The conceptual \"Value\" of an item, if any was defined. See the DestinyItemValueBlockDefinition for more details. */
  @Property(name: 'value')
  Object value = null;
  
/* If this item has a known source, this block will be non-null and populated with source information. Unfortunately, at this time we are not generating sources: that is some aggressively manual work which we didn't have time for, and I'm hoping to get back to at some point in the future. */
  @Property(name: 'sourceData')
  Object sourceData = null;
  
/* If this item has Objectives (extra tasks that can be accomplished related to the item... most frequently when the item is a Quest Step and the Objectives need to be completed to move on to the next Quest Step), this block will be non-null and the objectives defined herein. */
  @Property(name: 'objectives')
  Object objectives = null;
  
/* If this item *is* a Plug, this will be non-null and the info defined herein. See DestinyItemPlugDefinition for more information. */
  @Property(name: 'plug')
  Object plug = null;
  
/* If this item has related items in a \"Gear Set\", this will be non-null and the relationships defined herein. */
  @Property(name: 'gearset')
  Object gearset = null;
  
/* If this item is a \"reward sack\" that can be opened to provide other items, this will be non-null and the properties of the sack contained herein. */
  @Property(name: 'sack')
  Object sack = null;
  
/* If this item has any Sockets, this will be non-null and the individual sockets on the item will be defined herein. */
  @Property(name: 'sockets')
  Object sockets = null;
  
/* Summary data about the item. */
  @Property(name: 'summary')
  Object summary = null;
  
/* If the item has a Talent Grid, this will be non-null and the properties of the grid defined herein. Note that, while many items still have talent grids, the only ones with meaningful Nodes still on them will be Subclass/\"Build\" items. */
  @Property(name: 'talentGrid')
  Object talentGrid = null;
  
/* If the item has stats, this block will be defined. It has the \"raw\" investment stats for the item. These investment stats don't take into account the ways that the items can spawn, nor do they take into account any Stat Group transformations. I have retained them for debugging purposes, but I do not know how useful people will find them. */
  @Property(name: 'investmentStats')
  List<DestinyDefinitionsDestinyItemInvestmentStatDefinition> investmentStats = [];
  
/* If the item has any *intrinsic* Perks (Perks that it will provide regardless of Sockets, Talent Grid, and other transitory state), they will be defined here. */
  @Property(name: 'perks')
  List<DestinyDefinitionsDestinyItemPerkEntryDefinition> perks = [];
  
/* If the item has any related Lore (DestinyLoreDefinition), this will be the hash identifier you can use to look up the lore definition. */
  @Property(name: 'loreHash')
  int loreHash = null;
  
/* There are times when the game will show you a \"summary/vague\" version of an item - such as a description of its type represented as a DestinyInventoryItemDefinition - rather than display the item itself.  This happens sometimes when summarizing possible rewards in a tooltip. This is the item displayed instead, if it exists. */
  @Property(name: 'summaryItemHash')
  int summaryItemHash = null;
  
/* If any animations were extracted from game content for this item, these will be the definitions of those animations. */
  @Property(name: 'animations')
  List<DestinyDefinitionsAnimationsDestinyAnimationReference> animations = [];
  
/* BNet may forbid the execution of actions on this item via the API. If that is occurring, allowActions will be set to false. */
  @Property(name: 'allowActions')
  bool allowActions = null;
  
/* If we added any help or informational URLs about this item, these will be those links. */
  @Property(name: 'links')
  List<LinksHyperlinkReference> links = [];
  
/* The intrinsic transferability of an item.  I hate that this boolean is negative - but there's a reason.  Just because an item is intrinsically transferrable doesn't mean that it can be transferred, and we don't want to imply that this is the only source of that transferability. */
  @Property(name: 'nonTransferrable')
  bool nonTransferrable = null;
  
/* BNet attempts to make a more formal definition of item \"Categories\", as defined by DestinyItemCategoryDefinition. This is a list of all Categories that we were able to algorithmically determine that this item is a member of. (for instance, that it's a \"Weapon\", that it's an \"Auto Rifle\", etc...)  The algorithm for these is, unfortunately, volatile. If you believe you see a miscategorized item, please let us know on the Bungie API forums. */
  @Property(name: 'itemCategoryHashes')
  List<int> itemCategoryHashes = [];
  
/* In Destiny 1, we identified some items as having particular categories that we'd like to know about for various internal logic purposes. These are defined in SpecialItemType, and while these days the itemCategoryHashes are the preferred way of identifying types, we have retained this enum for its convenience. */
  @Property(name: 'specialItemType')
  Object specialItemType = null;
  
/* A value indicating the \"base\" the of the item. This enum is a useful but dramatic oversimplification of what it means for an item to have a \"Type\". Still, it's handy in many situations.  itemCategoryHashes are the preferred way of identifying types, we have retained this enum for its convenience. */
  @Property(name: 'itemType')
  Object itemType = null;
  
/* A value indicating the \"sub-type\" of the item. For instance, where an item might have an itemType value \"Weapon\", this will be something more specific like \"Auto Rifle\".  itemCategoryHashes are the preferred way of identifying types, we have retained this enum for its convenience. */
  @Property(name: 'itemSubType')
  Object itemSubType = null;
  
/* We run a similarly weak-sauce algorithm to try and determine whether an item is restricted to a specific class. If we find it to be restricted in such a way, we set this classType property to match the class' enumeration value so that users can easily identify class restricted items.  If you see a mis-classed item, please inform the developers in the Bungie API forum. */
  @Property(name: 'classType')
  Object classType = null;
  
/* If true, then you will be allowed to equip the item if you pass its other requirements.  This being false means that you cannot equip the item under any circumstances. */
  @Property(name: 'equippable')
  bool equippable = null;
  
/* Theoretically, an item can have many possible damage types. In *practice*, this is not true, but just in case weapons start being made that have multiple (for instance, an item where a socket has reusable plugs for every possible damage type that you can choose from freely), this field will return all of the possible damage types that are available to the weapon by default. */
  @Property(name: 'damageTypeHashes')
  List<int> damageTypeHashes = [];
  
/* This is the list of all damage types that we know ahead of time the item can take on. Unfortunately, this does not preclude the possibility of something funky happening to give the item a damage type that cannot be predicted beforehand: for example, if some designer decides to create arbitrary non-reusable plugs that cause damage type to change.  This damage type prediction will only use the following to determine potential damage types:  - Intrinsic perks  - Talent Node perks  - Known, reusable plugs for sockets */
  @Property(name: 'damageTypes')
  List<DestinyDamageType> damageTypes = [];
  
/* If the item has a damage type that could be considered to be default, it will be populated here.  For various upsetting reasons, it's surprisingly cumbersome to figure this out. I hope you're happy. */
  @Property(name: 'defaultDamageType')
  Object defaultDamageType = null;
  
/* Similar to defaultDamageType, but represented as the hash identifier for a DestinyDamageTypeDefinition.  I will likely regret leaving in the enumeration versions of these properties, but for now they're very convenient. */
  @Property(name: 'defaultDamageTypeHash')
  int defaultDamageTypeHash = null;
  
/* The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.  When entities refer to each other in Destiny content, it is this hash that they are referring to. */
  @Property(name: 'hash')
  int hash = null;
  
/* The index of the entity as it was found in the investment tables. */
  @Property(name: 'index')
  int index = null;
  
/* If this is true, then there is an entity with this identifier/type combination, but BNet is not yet allowed to show it. Sorry! */
  @Property(name: 'redacted')
  bool redacted = null;
  
  DestinyDefinitionsDestinyInventoryItemDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsDestinyInventoryItemDefinition[displayProperties=$displayProperties, secondaryIcon=$secondaryIcon, secondaryOverlay=$secondaryOverlay, secondarySpecial=$secondarySpecial, screenshot=$screenshot, itemTypeDisplayName=$itemTypeDisplayName, itemTypeAndTierDisplayName=$itemTypeAndTierDisplayName, displaySource=$displaySource, tooltipStyle=$tooltipStyle, action=$action, inventory=$inventory, setData=$setData, stats=$stats, equippingBlock=$equippingBlock, translationBlock=$translationBlock, preview=$preview, quality=$quality, value=$value, sourceData=$sourceData, objectives=$objectives, plug=$plug, gearset=$gearset, sack=$sack, sockets=$sockets, summary=$summary, talentGrid=$talentGrid, investmentStats=$investmentStats, perks=$perks, loreHash=$loreHash, summaryItemHash=$summaryItemHash, animations=$animations, allowActions=$allowActions, links=$links, nonTransferrable=$nonTransferrable, itemCategoryHashes=$itemCategoryHashes, specialItemType=$specialItemType, itemType=$itemType, itemSubType=$itemSubType, classType=$classType, equippable=$equippable, damageTypeHashes=$damageTypeHashes, damageTypes=$damageTypes, defaultDamageType=$defaultDamageType, defaultDamageTypeHash=$defaultDamageTypeHash, hash=$hash, index=$index, redacted=$redacted, ]';
  }
}

