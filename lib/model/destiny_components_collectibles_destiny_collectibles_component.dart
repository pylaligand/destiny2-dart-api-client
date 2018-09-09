part of destiny2_api.api;

@Entity()
class DestinyComponentsCollectiblesDestinyCollectiblesComponent {
  
  @Property(name: 'collectibles')
  Map<String, DestinyComponentsCollectiblesDestinyCollectibleComponent> collectibles = {};
  
  DestinyComponentsCollectiblesDestinyCollectiblesComponent();

  @override
  String toString()  {
    return 'DestinyComponentsCollectiblesDestinyCollectiblesComponent[collectibles=$collectibles, ]';
  }
}

