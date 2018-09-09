part of destiny2_api.api;

@Entity()
class DestinyEntitiesVendorsDestinyVendorSaleItemComponent {
  /* The index into the DestinyVendorDefinition.itemList property. Note that this means Vendor data *is* Content Version dependent: make sure you have the latest content before you use Vendor data, or these indexes may mismatch.   Most systems avoid this problem, but Vendors is one area where we are unable to reasonably avoid content dependency at the moment. */
  @Property(name: 'vendorItemIndex')
  int vendorItemIndex = null;
  
/* The hash of the item being sold, as a quick shortcut for looking up the DestinyInventoryItemDefinition of the sale item. */
  @Property(name: 'itemHash')
  int itemHash = null;
  
/* If populated, this is the hash of the item whose icon (and other secondary styles, but *not* the human readable strings) should override whatever icons/styles are on the item being sold.  If you don't do this, certain items whose styles are being overridden by socketed items - such as the \"Recycle Shader\" item - would show whatever their default icon/style is, and it wouldn't be pretty or look accurate. */
  @Property(name: 'overrideStyleItemHash')
  int overrideStyleItemHash = null;
  
/* How much of the item you'll be getting. */
  @Property(name: 'quantity')
  int quantity = null;
  
/* A flag indicating whether the requesting character can buy the item, and if not the reasons why the character can't buy it. */
  @Property(name: 'saleStatus')
  DestinyVendorItemStatus saleStatus = null;
  
/* A summary of the current costs of the item. */
  @Property(name: 'costs')
  List<DestinyDestinyItemQuantity> costs = [];
  
/* If you can't buy the item due to a complex character state, these will be hashes for DestinyUnlockDefinitions that you can check to see messages regarding the failure (if the unlocks have human readable information: it is not guaranteed that Unlocks will have human readable strings, and your application will have to handle that)  Prefer using failureIndexes instead. These are provided for informational purposes, but have largely been supplanted by failureIndexes. */
  @Property(name: 'requiredUnlocks')
  List<int> requiredUnlocks = [];
  
/* If any complex unlock states are checked in determining purchasability, these will be returned here along with the status of the unlock check.  Prefer using failureIndexes instead. These are provided for informational purposes, but have largely been supplanted by failureIndexes. */
  @Property(name: 'unlockStatuses')
  List<DestinyDestinyUnlockStatus> unlockStatuses = [];
  
/* Indexes in to the \"failureStrings\" lookup table in DestinyVendorDefinition for the given Vendor. Gives some more reliable failure information for why you can't purchase an item.  It is preferred to use these over requiredUnlocks and unlockStatuses: the latter are provided mostly in case someone can do something interesting with it that I didn't anticipate. */
  @Property(name: 'failureIndexes')
  List<int> failureIndexes = [];
  
/* A flags enumeration value representing the current state of any \"state modifiers\" on the item being sold. These are meant to correspond with some sort of visual indicator as to the augmentation: for instance, if an item is on sale or if you already own the item in question.  Determining how you want to represent these in your own app (or if you even want to) is an exercise left for the reader. */
  @Property(name: 'augments')
  DestinyDestinyVendorItemState augments = null;
  
  DestinyEntitiesVendorsDestinyVendorSaleItemComponent();

  @override
  String toString()  {
    return 'DestinyEntitiesVendorsDestinyVendorSaleItemComponent[vendorItemIndex=$vendorItemIndex, itemHash=$itemHash, overrideStyleItemHash=$overrideStyleItemHash, quantity=$quantity, saleStatus=$saleStatus, costs=$costs, requiredUnlocks=$requiredUnlocks, unlockStatuses=$unlockStatuses, failureIndexes=$failureIndexes, augments=$augments, ]';
  }
}

