part of destiny2_api.api;

@Entity()
class DestinyDefinitionsDestinyVendorItemSocketOverride {
  /* If this is populated, the socket will be overridden with a specific plug.  If this isn't populated, it's being overridden by something more complicated that is only known by the Game Server and God, which means we can't tell you in advance what it'll be. */
  @Property(name: 'singleItemHash')
  int singleItemHash = null;
  
/* If this is greater than -1, the number of randomized plugs on this socket will be set to this quantity instead of whatever it's set to by default. */
  @Property(name: 'randomizedOptionsCount')
  int randomizedOptionsCount = null;
  
/* This appears to be used to select which socket ultimately gets the override defined here. */
  @Property(name: 'socketTypeHash')
  int socketTypeHash = null;
  
  DestinyDefinitionsDestinyVendorItemSocketOverride();

  @override
  String toString()  {
    return 'DestinyDefinitionsDestinyVendorItemSocketOverride[singleItemHash=$singleItemHash, randomizedOptionsCount=$randomizedOptionsCount, socketTypeHash=$socketTypeHash, ]';
  }
}

