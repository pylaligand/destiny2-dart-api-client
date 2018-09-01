part of destiny2_api.api;

@Entity()
class DestinyDefinitionsPresentationDestinyPresentationNodeCollectibleChildEntry {
  
  @Property(name: 'collectibleHash')
  int collectibleHash = null;
  
  DestinyDefinitionsPresentationDestinyPresentationNodeCollectibleChildEntry();

  @override
  String toString()  {
    return 'DestinyDefinitionsPresentationDestinyPresentationNodeCollectibleChildEntry[collectibleHash=$collectibleHash, ]';
  }
}

