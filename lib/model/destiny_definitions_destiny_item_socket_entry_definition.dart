part of destiny2_api.api;

@Entity()
class DestinyDefinitionsDestinyItemSocketEntryDefinition {
  /* All sockets have a type, and this is the hash identifier for this particular type. Use it to look up the DestinySocketTypeDefinition: read there for more information on how socket types affect the behavior of the socket. */
  @Property(name: 'socketTypeHash')
  int socketTypeHash = null;
  
/* If a valid hash, this is the hash identifier for the DestinyInventoryItemDefinition representing the Plug that will be initially inserted into the item on item creation. Otherwise, this Socket will either start without a plug inserted, or will have one randomly inserted. */
  @Property(name: 'singleInitialItemHash')
  int singleInitialItemHash = null;
  
/* This is a list of pre-determined plugs that can *always* be plugged into this socket, without the character having the plug in their inventory.  If this list is populated, you will not be allowed to plug an arbitrary item in the socket: you will only be able to choose from one of these reusable plugs. */
  @Property(name: 'reusablePlugItems')
  List<DestinyDefinitionsDestinyItemSocketEntryPlugItemDefinition> reusablePlugItems = [];
  
/* If this is true, then the socket will not be initialized with a plug if the item is purchased from a Vendor.  Remember that Vendors are much more than conceptual vendors: they include \"Collection Kiosks\" and other entities. See DestinyVendorDefinition for more information. */
  @Property(name: 'preventInitializationOnVendorPurchase')
  bool preventInitializationOnVendorPurchase = null;
  
/* If this is true, the perks provided by this socket shouldn't be shown in the item's tooltip. This might be useful if it's providing a hidden bonus, or if the bonus is less important than other benefits on the item. */
  @Property(name: 'hidePerksInItemTooltip')
  bool hidePerksInItemTooltip = null;
  
/* Indicates where you should go to get plugs for this socket. This will affect how you populate your UI, as well as what plugs are valid for this socket. It's an alternative to having to check for the existence of certain properties (reusablePlugItems for example) to infer where plugs should come from. */
  @Property(name: 'plugSources')
  DestinySocketPlugSources plugSources = null;
  
/* If this socket's plugs come from a reusable DestinyPlugSetDefinition, this is the identifier for that set. We added this concept to reduce some major duplication that's going to come from sockets as replacements for what was once implemented as large sets of items and kiosks (like Emotes). */
  @Property(name: 'reusablePlugSetHash')
  int reusablePlugSetHash = null;
  
/* As of Forsaken, item sockets can have randomized plugs. If this is populated, the live data will return a subset of plugs from this list that are active and able to be inserted into the socket just like a reusable plug. */
  @Property(name: 'randomizedPlugItems')
  List<DestinyDefinitionsDestinyItemSocketEntryPlugItemRandomizedDefinition> randomizedPlugItems = [];
  
  DestinyDefinitionsDestinyItemSocketEntryDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsDestinyItemSocketEntryDefinition[socketTypeHash=$socketTypeHash, singleInitialItemHash=$singleInitialItemHash, reusablePlugItems=$reusablePlugItems, preventInitializationOnVendorPurchase=$preventInitializationOnVendorPurchase, hidePerksInItemTooltip=$hidePerksInItemTooltip, plugSources=$plugSources, reusablePlugSetHash=$reusablePlugSetHash, randomizedPlugItems=$randomizedPlugItems, ]';
  }
}

