part of destiny2_api.api;

@Entity()
class DestinyDefinitionsDirectorDestinyActivityGraphArtElementDefinition {
  /* The position on the map of the art element. */
  @Property(name: 'position')
  DestinyDefinitionsCommonDestinyPositionDefinition position = null;
  
  DestinyDefinitionsDirectorDestinyActivityGraphArtElementDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsDirectorDestinyActivityGraphArtElementDefinition[position=$position, ]';
  }
}

