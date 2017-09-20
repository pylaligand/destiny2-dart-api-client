part of destiny2_api.api;

@Entity()
class DestinyDefinitionsDestinyItemGearsetBlockDefinition {
  /* The maximum possible number of items that can be collected. */
  @Property(name: 'trackingValueMax')
  int trackingValueMax = null;
  
/* The list of hashes for items in the gearset. Use them to look up DestinyInventoryItemDefinition entries for the items in the set. */
  @Property(name: 'itemList')
  List<int> itemList = [];
  
  DestinyDefinitionsDestinyItemGearsetBlockDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsDestinyItemGearsetBlockDefinition[trackingValueMax=$trackingValueMax, itemList=$itemList, ]';
  }
}

