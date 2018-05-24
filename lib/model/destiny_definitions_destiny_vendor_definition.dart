part of destiny2_api.api;

@Entity()
class DestinyDefinitionsDestinyVendorDefinition {
  
  @Property(name: 'displayProperties')
  DestinyDefinitionsDestinyVendorDisplayPropertiesDefinition displayProperties = null;
  
/* If the vendor has a custom localized string describing the \"buy\" action, that is returned here. */
  @Property(name: 'buyString')
  String buyString = null;
  
/* Ditto for selling. Not that you can sell items to a vendor anymore. Will it come back? Who knows. The string's still there. */
  @Property(name: 'sellString')
  String sellString = null;
  
/* If the vendor has an item that should be displayed as the \"featured\" item, this is the hash identifier for that DestinyVendorItemDefinition.  Apparently this is usually a related currency, like a reputation token. But it need not be restricted to that. */
  @Property(name: 'displayItemHash')
  int displayItemHash = null;
  
/* If this is true, you aren't allowed to buy whatever the vendor is selling. */
  @Property(name: 'inhibitBuying')
  bool inhibitBuying = null;
  
/* If this is true, you're not allowed to sell whatever the vendor is buying. */
  @Property(name: 'inhibitSelling')
  bool inhibitSelling = null;
  
/* If the Vendor has a faction, this hash will be valid and point to a DestinyFactionDefinition.  The game UI and BNet often mine the faction definition for additional elements and details to place on the screen, such as the faction's Progression status (aka \"Reputation\"). */
  @Property(name: 'factionHash')
  int factionHash = null;
  
/* A number used for calculating the frequency of a vendor's inventory resetting/refreshing.  Don't worry about calculating this - we do it on the server side and send you the next refresh date with the live data. */
  @Property(name: 'resetIntervalMinutes')
  int resetIntervalMinutes = null;
  
/* Again, used for reset/refreshing of inventory. Don't worry too much about it. Unless you want to. */
  @Property(name: 'resetOffsetMinutes')
  int resetOffsetMinutes = null;
  
/* If an item can't be purchased from the vendor, there may be many \"custom\"/game state specific reasons why not.  This is a list of localized strings with messages for those custom failures. The live BNet data will return a failureIndexes property for items that can't be purchased: using those values to index into this array, you can show the user the appropriate failure message for the item that can't be bought. */
  @Property(name: 'failureStrings')
  List<String> failureStrings = [];
  
/* If we were able to predict the dates when this Vendor will be visible/available, this will be the list of those date ranges. Sadly, we're not able to predict this very frequently, so this will often be useless data. */
  @Property(name: 'unlockRanges')
  List<DatesDateRange> unlockRanges = [];
  
/* The internal identifier for the Vendor. A holdover from the old days of Vendors, but we don't have time to refactor it away. */
  @Property(name: 'vendorIdentifier')
  String vendorIdentifier = null;
  
/* A portrait of the Vendor's smiling mug. Or frothing tentacles. */
  @Property(name: 'vendorPortrait')
  String vendorPortrait = null;
  
/* If the vendor has a custom banner image, that can be found here. */
  @Property(name: 'vendorBanner')
  String vendorBanner = null;
  
/* If a vendor is not enabled, we won't even save the vendor's definition, and we won't return any items or info about them. It's as if they don't exist. */
  @Property(name: 'enabled')
  bool enabled = null;
  
/* If a vendor is not visible, we still have and will give vendor definition info, but we won't use them for things like Advisors or UI. */
  @Property(name: 'visible')
  bool visible = null;
  
/* The identifier of the VendorCategoryDefinition for this vendor's subcategory. */
  @Property(name: 'vendorSubcategoryIdentifier')
  String vendorSubcategoryIdentifier = null;
  
/* If TRUE, consolidate categories that only differ by trivial properties (such as having minor differences in name) */
  @Property(name: 'consolidateCategories')
  bool consolidateCategories = null;
  
/* Describes \"actions\" that can be performed on a vendor. Currently, none of these exist. But theoretically a Vendor could let you interact with it by performing actions. We'll see what these end up looking like if they ever get used. */
  @Property(name: 'actions')
  List<DestinyDefinitionsDestinyVendorActionDefinition> actions = [];
  
/* These are the headers for sections of items that the vendor is selling. When you see items organized by category in the header, it is these categories that it is showing.  Well, technically not *exactly* these. On BNet, it doesn't make sense to have categories be \"paged\" as we do in Destiny, so we run some heuristics to attempt to aggregate pages of categories together.   These are the categories post-concatenation, if the vendor had concatenation applied. If you want the pre-aggregated category data, use originalCategories. */
  @Property(name: 'categories')
  List<DestinyDefinitionsDestinyVendorCategoryEntryDefinition> categories = [];
  
/* See the categories property for a description of categories and why originalCategories exists. */
  @Property(name: 'originalCategories')
  List<DestinyDefinitionsDestinyVendorCategoryEntryDefinition> originalCategories = [];
  
/* Display Categories are different from \"categories\" in that these are specifically for visual grouping and display of categories in Vendor UI.   The \"categories\" structure is for validation of the contained items, and can be categorized entirely separately from \"Display Categories\", there need be and often will be no meaningful relationship between the two. */
  @Property(name: 'displayCategories')
  List<DestinyDefinitionsDestinyDisplayCategoryDefinition> displayCategories = [];
  
/* In addition to selling items, vendors can have \"interactions\": UI where you \"talk\" with the vendor and they offer you a reward, some item, or merely acknowledge via dialog that you did something cool. */
  @Property(name: 'interactions')
  List<DestinyDefinitionsDestinyVendorInteractionDefinition> interactions = [];
  
/* If the vendor shows you items from your own inventory - such as the Vault vendor does - this data describes the UI around showing those inventory buckets and which ones get shown. */
  @Property(name: 'inventoryFlyouts')
  List<DestinyDefinitionsDestinyVendorInventoryFlyoutDefinition> inventoryFlyouts = [];
  
/* If the vendor sells items (or merely has a list of items to show like the \"Sack\" vendors do), this is the list of those items that the vendor can sell. From this list, only a subset will be available from the vendor at any given time, selected randomly and reset on the vendor's refresh interval.  Note that a vendor can sell the same item multiple ways: for instance, nothing stops a vendor from selling you some specific weapon but using two different currencies, or the same weapon at multiple \"item levels\". */
  @Property(name: 'itemList')
  List<DestinyDefinitionsDestinyVendorItemDefinition> itemList = [];
  
/* BNet doesn't use this data yet, but it appears to be an optional list of flavor text about services that the Vendor can provide. */
  @Property(name: 'services')
  List<DestinyDefinitionsDestinyVendorServiceDefinition> services = [];
  
/* If the Vendor is actually a vehicle for the transferring of items (like the Vault and Postmaster vendors), this defines the list of source->destination buckets for transferring. */
  @Property(name: 'acceptedItems')
  List<DestinyDefinitionsDestinyVendorAcceptedItemDefinition> acceptedItems = [];
  
/* As many of you know, Vendor data has historically been pretty brutal on the BNet servers. In an effort to reduce this workload, only Vendors with this flag set will be returned on Vendor requests. This allows us to filter out Vendors that don't dynamic data that's particularly useful: things like \"Preview/Sack\" vendors, for example, that you can usually suss out the details for using just the definitions themselves. */
  @Property(name: 'returnWithVendorRequest')
  bool returnWithVendorRequest = null;
  
/* A vendor can be at different places in the world depending on the game/character/account state. This is the list of possible locations for the vendor, along with conditions we use to determine which one is currently active. */
  @Property(name: 'locations')
  List<DestinyDefinitionsVendorsDestinyVendorLocationDefinition> locations = [];
  
/* A vendor can be a part of 0 or 1 \"groups\" at a time: a group being a collection of Vendors related by either location or function/purpose. It's used for our our Companion Vendor UI. Only one of these can be active for a Vendor at a time. */
  @Property(name: 'groups')
  List<DestinyDefinitionsDestinyVendorGroupReference> groups = [];
  
/* The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.  When entities refer to each other in Destiny content, it is this hash that they are referring to. */
  @Property(name: 'hash')
  int hash = null;
  
/* The index of the entity as it was found in the investment tables. */
  @Property(name: 'index')
  int index = null;
  
/* If this is true, then there is an entity with this identifier/type combination, but BNet is not yet allowed to show it. Sorry! */
  @Property(name: 'redacted')
  bool redacted = null;
  
  DestinyDefinitionsDestinyVendorDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsDestinyVendorDefinition[displayProperties=$displayProperties, buyString=$buyString, sellString=$sellString, displayItemHash=$displayItemHash, inhibitBuying=$inhibitBuying, inhibitSelling=$inhibitSelling, factionHash=$factionHash, resetIntervalMinutes=$resetIntervalMinutes, resetOffsetMinutes=$resetOffsetMinutes, failureStrings=$failureStrings, unlockRanges=$unlockRanges, vendorIdentifier=$vendorIdentifier, vendorPortrait=$vendorPortrait, vendorBanner=$vendorBanner, enabled=$enabled, visible=$visible, vendorSubcategoryIdentifier=$vendorSubcategoryIdentifier, consolidateCategories=$consolidateCategories, actions=$actions, categories=$categories, originalCategories=$originalCategories, displayCategories=$displayCategories, interactions=$interactions, inventoryFlyouts=$inventoryFlyouts, itemList=$itemList, services=$services, acceptedItems=$acceptedItems, returnWithVendorRequest=$returnWithVendorRequest, locations=$locations, groups=$groups, hash=$hash, index=$index, redacted=$redacted, ]';
  }
}

