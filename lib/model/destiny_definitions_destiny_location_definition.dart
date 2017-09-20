part of destiny2_api.api;

@Entity()
class DestinyDefinitionsDestinyLocationDefinition {
  /* If the location has a Vendor on it, this is the hash identifier for that Vendor. Look them up with DestinyVendorDefinition. */
  @Property(name: 'vendorHash')
  int vendorHash = null;
  
/* A Location may refer to different specific spots in the world based on the world's current state. This is a list of those potential spots, and the data we can use at runtime to determine which one of the spots is the currently valid one. */
  @Property(name: 'locationReleases')
  List<DestinyDefinitionsDestinyLocationReleaseDefinition> locationReleases = [];
  
/* The unique identifier for this entity. Guaranteed to be unique for the type of entity, but not globally.  When entities refer to each other in Destiny content, it is this hash that they are referring to. */
  @Property(name: 'hash')
  int hash = null;
  
/* The index of the entity as it was found in the investment tables. */
  @Property(name: 'index')
  int index = null;
  
/* If this is true, then there is an entity with this identifier/type combination, but BNet is not yet allowed to show it. Sorry! */
  @Property(name: 'redacted')
  bool redacted = null;
  
  DestinyDefinitionsDestinyLocationDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsDestinyLocationDefinition[vendorHash=$vendorHash, locationReleases=$locationReleases, hash=$hash, index=$index, redacted=$redacted, ]';
  }
}

