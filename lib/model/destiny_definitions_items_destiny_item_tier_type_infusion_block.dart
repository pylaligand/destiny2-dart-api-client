part of destiny2_api.api;

@Entity()
class DestinyDefinitionsItemsDestinyItemTierTypeInfusionBlock {
  /* The default portion of quality that will transfer from the infuser to the infusee item. (InfuserQuality - InfuseeQuality) * baseQualityTransferRatio = base quality transferred. */
  @Property(name: 'baseQualityTransferRatio')
  double baseQualityTransferRatio = null;
  
/* As long as InfuserQuality > InfuseeQuality, the amount of quality bestowed is guaranteed to be at least this value, even if the transferRatio would dictate that it should be less. The total amount of quality that ends up in the Infusee cannot exceed the Infuser's quality however (for instance, if you infuse a 300 item with a 301 item and the minimum quality increment is 10, the infused item will not end up with 310 quality) */
  @Property(name: 'minimumQualityIncrement')
  int minimumQualityIncrement = null;
  
  DestinyDefinitionsItemsDestinyItemTierTypeInfusionBlock();

  @override
  String toString()  {
    return 'DestinyDefinitionsItemsDestinyItemTierTypeInfusionBlock[baseQualityTransferRatio=$baseQualityTransferRatio, minimumQualityIncrement=$minimumQualityIncrement, ]';
  }
}

