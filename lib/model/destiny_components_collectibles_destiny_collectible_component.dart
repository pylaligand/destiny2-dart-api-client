part of destiny2_api.api;

@Entity()
class DestinyComponentsCollectiblesDestinyCollectibleComponent {
  
  @Property(name: 'state')
  DestinyDestinyCollectibleState state = null;
  
  DestinyComponentsCollectiblesDestinyCollectibleComponent();

  @override
  String toString()  {
    return 'DestinyComponentsCollectiblesDestinyCollectibleComponent[state=$state, ]';
  }
}

