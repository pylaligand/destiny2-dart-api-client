part of destiny2_api.api;

@Entity()
class DestinyDefinitionsDirectorDestinyActivityGraphDisplayProgressionDefinition {
  
  @Property(name: 'id')
  int id = null;
  

  @Property(name: 'progressionHash')
  int progressionHash = null;
  
  DestinyDefinitionsDirectorDestinyActivityGraphDisplayProgressionDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsDirectorDestinyActivityGraphDisplayProgressionDefinition[id=$id, progressionHash=$progressionHash, ]';
  }
}

