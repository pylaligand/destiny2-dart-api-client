part of destiny2_api.api;

@Entity()
class DestinyDefinitionsDestinyItemSocketCategoryDefinition {
  /* The hash for the Socket Category: a quick way to go get the header display information for the category. Use it to look up DestinySocketCategoryDefinition info. */
  @Property(name: 'socketCategoryHash')
  int socketCategoryHash = null;
  
/* Use these indexes to look up the sockets in the \"sockets.socketEntries\" property on the item definition. These are the indexes under the category, in game-rendered order. */
  @Property(name: 'socketIndexes')
  List<int> socketIndexes = [];
  
  DestinyDefinitionsDestinyItemSocketCategoryDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsDestinyItemSocketCategoryDefinition[socketCategoryHash=$socketCategoryHash, socketIndexes=$socketIndexes, ]';
  }
}

