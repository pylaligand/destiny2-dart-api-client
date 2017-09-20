part of destiny2_api.api;

@Entity()
class DestinyDefinitionsDestinyActivityGraphListEntryDefinition {
  /* The hash identifier of the DestinyActivityGraphDefinition that should be shown when opening the director. */
  @Property(name: 'activityGraphHash')
  int activityGraphHash = null;
  
  DestinyDefinitionsDestinyActivityGraphListEntryDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsDestinyActivityGraphListEntryDefinition[activityGraphHash=$activityGraphHash, ]';
  }
}

