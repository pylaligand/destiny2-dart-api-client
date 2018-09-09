part of destiny2_api.api;

@Entity()
class DestinyComponentsCollectiblesDestinyProfileCollectiblesComponent {
  /* The list of collectibles determined by the game as having been \"recently\" acquired. */
  @Property(name: 'recentCollectibleHashes')
  List<int> recentCollectibleHashes = [];
  
/* The list of collectibles determined by the game as having been \"recently\" acquired.  The game client itself actually controls this data, so I personally question whether anyone will get much use out of this: because we can't edit this value through the API. But in case anyone finds it useful, here it is. */
  @Property(name: 'newnessFlaggedCollectibleHashes')
  List<int> newnessFlaggedCollectibleHashes = [];
  

  @Property(name: 'collectibles')
  Map<String, DestinyComponentsCollectiblesDestinyCollectibleComponent> collectibles = {};
  
  DestinyComponentsCollectiblesDestinyProfileCollectiblesComponent();

  @override
  String toString()  {
    return 'DestinyComponentsCollectiblesDestinyProfileCollectiblesComponent[recentCollectibleHashes=$recentCollectibleHashes, newnessFlaggedCollectibleHashes=$newnessFlaggedCollectibleHashes, collectibles=$collectibles, ]';
  }
}

