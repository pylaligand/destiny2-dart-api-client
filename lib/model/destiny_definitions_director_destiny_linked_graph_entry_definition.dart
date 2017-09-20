part of destiny2_api.api;

@Entity()
class DestinyDefinitionsDirectorDestinyLinkedGraphEntryDefinition {
  
  @Property(name: 'activityGraphHash')
  int activityGraphHash = null;
  
  DestinyDefinitionsDirectorDestinyLinkedGraphEntryDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsDirectorDestinyLinkedGraphEntryDefinition[activityGraphHash=$activityGraphHash, ]';
  }
}

