part of destiny2_api.api;

@Entity()
class DestinyDefinitionsDestinyNodeSocketReplaceResponse {
  /* The hash identifier of the socket type to find amidst the item's sockets (the item to which this talent grid is attached). See DestinyInventoryItemDefinition.sockets.socketEntries to find the socket type of sockets on the item in question. */
  @Property(name: 'socketTypeHash')
  int socketTypeHash = null;
  
/* The hash identifier of the plug item that will be inserted into the socket found. */
  @Property(name: 'plugItemHash')
  int plugItemHash = null;
  
  DestinyDefinitionsDestinyNodeSocketReplaceResponse();

  @override
  String toString()  {
    return 'DestinyDefinitionsDestinyNodeSocketReplaceResponse[socketTypeHash=$socketTypeHash, plugItemHash=$plugItemHash, ]';
  }
}

