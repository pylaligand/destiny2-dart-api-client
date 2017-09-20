part of destiny2_api.api;

@Entity()
class DestinyDefinitionsDirectorDestinyActivityGraphConnectionDefinition {
  
  @Property(name: 'sourceNodeHash')
  int sourceNodeHash = null;
  

  @Property(name: 'destNodeHash')
  int destNodeHash = null;
  
  DestinyDefinitionsDirectorDestinyActivityGraphConnectionDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsDirectorDestinyActivityGraphConnectionDefinition[sourceNodeHash=$sourceNodeHash, destNodeHash=$destNodeHash, ]';
  }
}

