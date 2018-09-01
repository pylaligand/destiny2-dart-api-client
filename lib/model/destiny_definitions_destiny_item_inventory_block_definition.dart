part of destiny2_api.api;

@Entity()
class DestinyDefinitionsDestinyItemInventoryBlockDefinition {
  /* If this string is populated, you can't have more than one stack with this label in a given inventory. Note that this is different from the equipping block's unique label, which is used for equipping uniqueness. */
  @Property(name: 'stackUniqueLabel')
  String stackUniqueLabel = null;
  
/* The maximum quantity of this item that can exist in a stack. */
  @Property(name: 'maxStackSize')
  int maxStackSize = null;
  
/* The hash identifier for the DestinyInventoryBucketDefinition to which this item belongs. I should have named this \"bucketHash\", but too many things refer to it now. Sigh. */
  @Property(name: 'bucketTypeHash')
  int bucketTypeHash = null;
  
/* If the item is picked up by the lost loot queue, this is the hash identifier for the DestinyInventoryBucketDefinition into which it will be placed. Again, I should have named this recoveryBucketHash instead. */
  @Property(name: 'recoveryBucketTypeHash')
  int recoveryBucketTypeHash = null;
  
/* The hash identifier for the Tier Type of the item, use to look up its DestinyItemTierTypeDefinition if you need to show localized data for the item's tier. */
  @Property(name: 'tierTypeHash')
  int tierTypeHash = null;
  
/* If TRUE, this item is instanced. Otherwise, it is a generic item that merely has a quantity in a stack (like Glimmer). */
  @Property(name: 'isInstanceItem')
  bool isInstanceItem = null;
  
/* The localized name of the tier type, which is a useful shortcut so you don't have to look up the definition every time. However, it's mostly a holdover from days before we had a DestinyItemTierTypeDefinition to refer to. */
  @Property(name: 'tierTypeName')
  String tierTypeName = null;
  
/* The enumeration matching the tier type of the item to known values, again for convenience sake. */
  @Property(name: 'tierType')
  DestinyTierType tierType = null;
  
/* The tooltip message to show, if any, when the item expires. */
  @Property(name: 'expirationTooltip')
  String expirationTooltip = null;
  
/* If the item expires while playing in an activity, we show a different message. */
  @Property(name: 'expiredInActivityMessage')
  String expiredInActivityMessage = null;
  
/* If the item expires in orbit, we show a... more different message. (\"Consummate V's, consummate!\") */
  @Property(name: 'expiredInOrbitMessage')
  String expiredInOrbitMessage = null;
  

  @Property(name: 'suppressExpirationWhenObjectivesComplete')
  bool suppressExpirationWhenObjectivesComplete = null;
  
  DestinyDefinitionsDestinyItemInventoryBlockDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsDestinyItemInventoryBlockDefinition[stackUniqueLabel=$stackUniqueLabel, maxStackSize=$maxStackSize, bucketTypeHash=$bucketTypeHash, recoveryBucketTypeHash=$recoveryBucketTypeHash, tierTypeHash=$tierTypeHash, isInstanceItem=$isInstanceItem, tierTypeName=$tierTypeName, tierType=$tierType, expirationTooltip=$expirationTooltip, expiredInActivityMessage=$expiredInActivityMessage, expiredInOrbitMessage=$expiredInOrbitMessage, suppressExpirationWhenObjectivesComplete=$suppressExpirationWhenObjectivesComplete, ]';
  }
}

