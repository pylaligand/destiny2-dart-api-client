part of destiny2_api.api;

@Entity()
class DestinyCharacterDestinyItemPeerView {
  /* The hash identifier of the item in question. Use it to look up the DestinyInventoryItemDefinition of the item for static rendering data. */
  @Property(name: 'itemHash')
  int itemHash = null;
  
/* The list of dyes that have been applied to this item. */
  @Property(name: 'dyes')
  List<DestinyDyeReference> dyes = [];
  
  DestinyCharacterDestinyItemPeerView();

  @override
  String toString()  {
    return 'DestinyCharacterDestinyItemPeerView[itemHash=$itemHash, dyes=$dyes, ]';
  }
}

