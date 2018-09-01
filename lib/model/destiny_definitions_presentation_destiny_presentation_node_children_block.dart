part of destiny2_api.api;

@Entity()
class DestinyDefinitionsPresentationDestinyPresentationNodeChildrenBlock {
  
  @Property(name: 'presentationNodes')
  List<DestinyDefinitionsPresentationDestinyPresentationNodeChildEntry> presentationNodes = [];
  

  @Property(name: 'collectibles')
  List<DestinyDefinitionsPresentationDestinyPresentationNodeCollectibleChildEntry> collectibles = [];
  

  @Property(name: 'records')
  List<DestinyDefinitionsPresentationDestinyPresentationNodeRecordChildEntry> records = [];
  
  DestinyDefinitionsPresentationDestinyPresentationNodeChildrenBlock();

  @override
  String toString()  {
    return 'DestinyDefinitionsPresentationDestinyPresentationNodeChildrenBlock[presentationNodes=$presentationNodes, collectibles=$collectibles, records=$records, ]';
  }
}

