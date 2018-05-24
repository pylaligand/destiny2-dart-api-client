part of destiny2_api.api;

@Entity()
class DestinyDefinitionsDestinyItemIntrinsicSocketEntryDefinition {
  /* Indicates the plug that is intrinsically inserted into this socket. */
  @Property(name: 'plugItemHash')
  int plugItemHash = null;
  
/* Indicates the type of this intrinsic socket. */
  @Property(name: 'socketTypeHash')
  int socketTypeHash = null;
  
  DestinyDefinitionsDestinyItemIntrinsicSocketEntryDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsDestinyItemIntrinsicSocketEntryDefinition[plugItemHash=$plugItemHash, socketTypeHash=$socketTypeHash, ]';
  }
}

