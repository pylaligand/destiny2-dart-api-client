part of destiny2_api.api;

@Entity()
class DestinyDefinitionsPresentationDestinyPresentationNodeChildEntry {
  
  @Property(name: 'presentationNodeHash')
  int presentationNodeHash = null;
  
  DestinyDefinitionsPresentationDestinyPresentationNodeChildEntry();

  @override
  String toString()  {
    return 'DestinyDefinitionsPresentationDestinyPresentationNodeChildEntry[presentationNodeHash=$presentationNodeHash, ]';
  }
}

