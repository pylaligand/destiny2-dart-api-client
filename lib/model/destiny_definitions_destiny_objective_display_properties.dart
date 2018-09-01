part of destiny2_api.api;

@Entity()
class DestinyDefinitionsDestinyObjectiveDisplayProperties {
  /* The activity associated with this objective in the context of this item, if any. */
  @Property(name: 'activityHash')
  int activityHash = null;
  
/* If true, the game shows this objective on item preview screens. */
  @Property(name: 'displayOnItemPreviewScreen')
  bool displayOnItemPreviewScreen = null;
  
  DestinyDefinitionsDestinyObjectiveDisplayProperties();

  @override
  String toString()  {
    return 'DestinyDefinitionsDestinyObjectiveDisplayProperties[activityHash=$activityHash, displayOnItemPreviewScreen=$displayOnItemPreviewScreen, ]';
  }
}

