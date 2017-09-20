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
  
  DestinyDefinitionsDestinyItemSocketEntryDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsDestinyItemSocketEntryDefinition[socketTypeHash=$socketTypeHash, singleInitialItemHash=$singleInitialItemHash, reusablePlugItems=$reusablePlugItems, ]';
  }
}

