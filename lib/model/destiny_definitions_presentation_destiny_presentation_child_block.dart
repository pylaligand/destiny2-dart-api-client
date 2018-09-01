part of destiny2_api.api;

@Entity()
class DestinyDefinitionsPresentationDestinyPresentationChildBlock {
  
  @Property(name: 'presentationNodeType')
  DestinyDestinyPresentationNodeType presentationNodeType = null;
  

  @Property(name: 'parentPresentationNodeHashes')
  List<int> parentPresentationNodeHashes = [];
  

  @Property(name: 'displayStyle')
  DestinyDestinyPresentationDisplayStyle displayStyle = null;
  
  DestinyDefinitionsPresentationDestinyPresentationChildBlock();

  @override
  String toString()  {
    return 'DestinyDefinitionsPresentationDestinyPresentationChildBlock[presentationNodeType=$presentationNodeType, parentPresentationNodeHashes=$parentPresentationNodeHashes, displayStyle=$displayStyle, ]';
  }
}

