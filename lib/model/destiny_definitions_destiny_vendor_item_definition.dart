part of destiny2_api.api;

@Entity()
class DestinyDefinitionsDestinyVendorItemDefinition {
  /* The index into the DestinyVendorDefinition.saleList. This is what we use to refer to items being sold throughout live and definition data. */
  @Property(name: 'vendorItemIndex')
  int vendorItemIndex = null;
  
/* The hash identifier of the item being sold (DestinyInventoryItemDefinition).  Note that a vendor can sell the same item in multiple ways, so don't assume that itemHash is a unique identifier for this entity. */
  @Property(name: 'itemHash')
  int itemHash = null;
  
/* The amount you will recieve of the item described in itemHash if you make the purchase. */
  @Property(name: 'quantity')
  int quantity = null;
  
/* An list of indexes into the DestinyVendorDefinition.failureStrings array, indicating the possible failure strings that can be relevant for this item. */
  @Property(name: 'failureIndexes')
  List<int> failureIndexes = [];
  
/* This is a pre-compiled aggregation of item value and priceOverrideList, so that we have one place to check for what the purchaser must pay for the item. Use this instead of trying to piece together the price separately. */
  @Property(name: 'currencies')
  List<DestinyDestinyItemQuantity> currencies = [];
  
/* If this item can be refunded, this is the policy for what will be refundd, how, and in what time period. */
  @Property(name: 'refundPolicy')
  DestinyDestinyVendorItemRefundPolicy refundPolicy = null;
  
/* The amount of time before refundability of the newly purchased item will expire. */
  @Property(name: 'refundTimeLimit')
  int refundTimeLimit = null;
  
/* The Default level at which the item will spawn. Almost always driven by an adjusto these days. Ideally should be singular. It's a long story how this ended up as a list, but there is always either going to be 0:1 of these entities. */
  @Property(name: 'creationLevels')
  List<DestinyDefinitionsDestinyItemCreationEntryLevelDefinition> creationLevels = [];
  
/* This is an index specifically into the display category, as opposed to the server-side Categories (which do not need to match or pair with each other in any way: server side categories are really just structures for common validation. Display Category will let us more easily categorize items visually) */
  @Property(name: 'displayCategoryIndex')
  int displayCategoryIndex = null;
  
/* The index into the DestinyVendorDefinition.categories array, so you can find the category associated with this item. */
  @Property(name: 'categoryIndex')
  int categoryIndex = null;
  
/* Same as above, but for the original category indexes. */
  @Property(name: 'originalCategoryIndex')
  int originalCategoryIndex = null;
  
/* The minimum character level at which this item is available for sale. */
  @Property(name: 'minimumLevel')
  int minimumLevel = null;
  
/* The maximum character level at which this item is available for sale. */
  @Property(name: 'maximumLevel')
  int maximumLevel = null;
  
/* The action to be performed when purchasing the item, if it's not just \"buy\". */
  @Property(name: 'action')
  DestinyDefinitionsDestinyVendorSaleItemActionBlockDefinition action = null;
  
/* The string identifier for the category selling this item. */
  @Property(name: 'displayCategory')
  String displayCategory = null;
  
/* The inventory bucket into which this item will be placed upon purchase. */
  @Property(name: 'inventoryBucketHash')
  int inventoryBucketHash = null;
  
/* The most restrictive scope that determines whether the item is available in the Vendor's inventory. See DestinyGatingScope's documentation for more information.  This can be determined by Unlock gating, or by whether or not the item has purchase level requirements (minimumLevel and maximumLevel properties). */
  @Property(name: 'visibilityScope')
  DestinyDestinyGatingScope visibilityScope = null;
  
/* Similar to visibilityScope, it represents the most restrictive scope that determines whether the item can be purchased. It will at least be as restrictive as visibilityScope, but could be more restrictive if the item has additional purchase requirements beyond whether it is merely visible or not.  See DestinyGatingScope's documentation for more information. */
  @Property(name: 'purchasableScope')
  DestinyDestinyGatingScope purchasableScope = null;
  
  DestinyDefinitionsDestinyVendorItemDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsDestinyVendorItemDefinition[vendorItemIndex=$vendorItemIndex, itemHash=$itemHash, quantity=$quantity, failureIndexes=$failureIndexes, currencies=$currencies, refundPolicy=$refundPolicy, refundTimeLimit=$refundTimeLimit, creationLevels=$creationLevels, displayCategoryIndex=$displayCategoryIndex, categoryIndex=$categoryIndex, originalCategoryIndex=$originalCategoryIndex, minimumLevel=$minimumLevel, maximumLevel=$maximumLevel, action=$action, displayCategory=$displayCategory, inventoryBucketHash=$inventoryBucketHash, visibilityScope=$visibilityScope, purchasableScope=$purchasableScope, ]';
  }
}

