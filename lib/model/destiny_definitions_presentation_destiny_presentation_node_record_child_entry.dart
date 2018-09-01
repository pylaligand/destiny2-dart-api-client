part of destiny2_api.api;

@Entity()
class DestinyDefinitionsPresentationDestinyPresentationNodeRecordChildEntry {
  
  @Property(name: 'recordHash')
  int recordHash = null;
  
  DestinyDefinitionsPresentationDestinyPresentationNodeRecordChildEntry();

  @override
  String toString()  {
    return 'DestinyDefinitionsPresentationDestinyPresentationNodeRecordChildEntry[recordHash=$recordHash, ]';
  }
}

