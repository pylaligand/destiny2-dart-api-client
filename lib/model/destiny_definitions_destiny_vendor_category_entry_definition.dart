part of destiny2_api.api;

@Entity()
class DestinyDefinitionsDestinyVendorCategoryEntryDefinition {
  /* The index of the category in the original category definitions for the vendor. */
  @Property(name: 'categoryIndex')
  int categoryIndex = null;
  
/* The string identifier of the category. */
  @Property(name: 'categoryId')
  String categoryId = null;
  
/* Used in sorting items in vendors... but there's a lot more to it. Just go with the order provided in the itemIndexes property on the DestinyVendorCategoryComponent instead, it should be more reliable than trying to recalculate it yourself. */
  @Property(name: 'sortValue')
  int sortValue = null;
  
/* The hashed identifier for the category. */
  @Property(name: 'categoryHash')
  int categoryHash = null;
  
/* The amount of items that will be available when this category is shown. */
  @Property(name: 'quantityAvailable')
  int quantityAvailable = null;
  
/* If items aren't up for sale in this category, should we still show them (greyed out)? */
  @Property(name: 'showUnavailableItems')
  bool showUnavailableItems = null;
  
/* If you don't have the currency required to buy items from this category, should the items be hidden? */
  @Property(name: 'hideIfNoCurrency')
  bool hideIfNoCurrency = null;
  
/* True if this category doesn't allow purchases. */
  @Property(name: 'hideFromRegularPurchase')
  bool hideFromRegularPurchase = null;
  
/* The localized string for making purchases from this category, if it is different from the vendor's string for purchasing. */
  @Property(name: 'buyStringOverride')
  String buyStringOverride = null;
  
/* If the category is disabled, this is the localized description to show. */
  @Property(name: 'disabledDescription')
  String disabledDescription = null;
  
/* The localized title of the category. */
  @Property(name: 'displayTitle')
  String displayTitle = null;
  
/* If this category has an overlay prompt that should appear, this contains the details of that prompt. */
  @Property(name: 'overlay')
  DestinyDefinitionsDestinyVendorCategoryOverlayDefinition overlay = null;
  
/* A shortcut for the vendor item indexes sold under this category. Saves us from some expensive reorganization at runtime. */
  @Property(name: 'vendorItemIndexes')
  List<int> vendorItemIndexes = [];
  
/* Sometimes a category isn't actually used to sell items, but rather to preview them. This implies different UI (and manual placement of the category in the UI) in the game, and special treatment. */
  @Property(name: 'isPreview')
  bool isPreview = null;
  
/* If true, this category only displays items: you can't purchase anything in them. */
  @Property(name: 'isDisplayOnly')
  bool isDisplayOnly = null;
  
  DestinyDefinitionsDestinyVendorCategoryEntryDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsDestinyVendorCategoryEntryDefinition[categoryIndex=$categoryIndex, categoryId=$categoryId, sortValue=$sortValue, categoryHash=$categoryHash, quantityAvailable=$quantityAvailable, showUnavailableItems=$showUnavailableItems, hideIfNoCurrency=$hideIfNoCurrency, hideFromRegularPurchase=$hideFromRegularPurchase, buyStringOverride=$buyStringOverride, disabledDescription=$disabledDescription, displayTitle=$displayTitle, overlay=$overlay, vendorItemIndexes=$vendorItemIndexes, isPreview=$isPreview, isDisplayOnly=$isDisplayOnly, ]';
  }
}

