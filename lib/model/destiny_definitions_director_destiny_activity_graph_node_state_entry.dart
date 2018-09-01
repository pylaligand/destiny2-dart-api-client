part of destiny2_api.api;

@Entity()
class DestinyDefinitionsDirectorDestinyActivityGraphNodeStateEntry {
  
  @Property(name: 'state')
  DestinyDestinyGraphNodeState state = null;
  
  DestinyDefinitionsDirectorDestinyActivityGraphNodeStateEntry();

  @override
  String toString()  {
    return 'DestinyDefinitionsDirectorDestinyActivityGraphNodeStateEntry[state=$state, ]';
  }
}

