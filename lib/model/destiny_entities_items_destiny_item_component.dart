part of destiny2_api.api;

@Entity()
class DestinyEntitiesItemsDestinyItemComponent {
  /* The identifier for the item's definition, which is where most of the useful static information for the item can be found. */
  @Property(name: 'itemHash')
  int itemHash = null;
  
/* If the item is instanced, it will have an instance ID. Lack of an instance ID implies that the item has no distinct local qualities aside from stack size. */
  @Property(name: 'itemInstanceId')
  int itemInstanceId = null;
  
/* The quantity of the item in this stack. Note that Instanced items cannot stack. If an instanced item, this value will always be 1 (as the stack has exactly one item in it) */
  @Property(name: 'quantity')
  int quantity = null;
  
/* If the item is bound to a location, it will be specified in this enum. */
  @Property(name: 'bindStatus')
  DestinyItemBindStatus bindStatus = null;
  
/* An easy reference for where the item is located. Redundant if you got the item from an Inventory, but useful when making detail calls on specific items. */
  @Property(name: 'location')
  DestinyItemLocation location = null;
  
/* The hash identifier for the specific inventory bucket in which the item is located. */
  @Property(name: 'bucketHash')
  int bucketHash = null;
  
/* If there is a known error state that would cause this item to not be transferable, this Flags enum will indicate all of those error states. Otherwise, it will be 0 (CanTransfer). */
  @Property(name: 'transferStatus')
  DestinyTransferStatuses transferStatus = null;
  
/* If the item can be locked, this will indicate that state. */
  @Property(name: 'lockable')
  bool lockable = null;
  
/* A flags enumeration indicating the transient/custom states of the item that affect how it is rendered: whether it's tracked or locked for example, or whether it has a masterwork plug inserted. */
  @Property(name: 'state')
  DestinyItemState state = null;
  
/* If populated, this is the hash of the item whose icon (and other secondary styles, but *not* the human readable strings) should override whatever icons/styles are on the item being sold.  If you don't do this, certain items whose styles are being overridden by socketed items - such as the \"Recycle Shader\" item - would show whatever their default icon/style is, and it wouldn't be pretty or look accurate. */
  @Property(name: 'overrideStyleItemHash')
  int overrideStyleItemHash = null;
  
  DestinyEntitiesItemsDestinyItemComponent();

  @override
  String toString()  {
    return 'DestinyEntitiesItemsDestinyItemComponent[itemHash=$itemHash, itemInstanceId=$itemInstanceId, quantity=$quantity, bindStatus=$bindStatus, location=$location, bucketHash=$bucketHash, transferStatus=$transferStatus, lockable=$lockable, state=$state, overrideStyleItemHash=$overrideStyleItemHash, ]';
  }
}

