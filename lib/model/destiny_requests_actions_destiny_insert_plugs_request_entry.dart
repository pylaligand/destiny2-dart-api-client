part of destiny2_api.api;

@Entity()
class DestinyRequestsActionsDestinyInsertPlugsRequestEntry {
  /* The index into the socket array, which identifies the specific socket being operated on. We also need to know the socketArrayType in order to uniquely identify the socket.  Don't point to or try to insert a plug into an infusion socket. It won't work. */
  @Property(name: 'socketIndex')
  int socketIndex = null;
  
/* This property, combined with the socketIndex, tells us which socket we are referring to (since operations can be performed on both Intrinsic and \"default\" sockets, and they occupy different arrays in the Inventory Item Definition). I know, I know. Don't give me that look. */
  @Property(name: 'socketArrayType')
  DestinyRequestsActionsDestinySocketArrayType socketArrayType = null;
  
/* Plugs are never instanced (except in infusion). So with the hash alone, we should be able to: 1) Infer whether the player actually needs to have the item, or if it's a reusable plug 2) Perform any operation needed to use the Plug, including removing the plug item and running reward sheets. */
  @Property(name: 'plugItemHash')
  int plugItemHash = null;
  
  DestinyRequestsActionsDestinyInsertPlugsRequestEntry();

  @override
  String toString()  {
    return 'DestinyRequestsActionsDestinyInsertPlugsRequestEntry[socketIndex=$socketIndex, socketArrayType=$socketArrayType, plugItemHash=$plugItemHash, ]';
  }
}

