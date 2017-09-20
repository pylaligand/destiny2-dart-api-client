part of destiny2_api.api;

@Entity()
class DestinyDefinitionsDirectorDestinyActivityGraphDisplayObjectiveDefinition {
  /* $NOTE $amola 2017-01-19 This field is apparently something that CUI uses to manually wire up objectives to display info. I am unsure how it works. */
  @Property(name: 'id')
  int id = null;
  
/* The objective being shown on the map. */
  @Property(name: 'objectiveHash')
  int objectiveHash = null;
  
  DestinyDefinitionsDirectorDestinyActivityGraphDisplayObjectiveDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsDirectorDestinyActivityGraphDisplayObjectiveDefinition[id=$id, objectiveHash=$objectiveHash, ]';
  }
}

