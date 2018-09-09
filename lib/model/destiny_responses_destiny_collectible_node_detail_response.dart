part of destiny2_api.api;

@Entity()
class DestinyResponsesDestinyCollectibleNodeDetailResponse {
  /* COMPONENT TYPE: Collectibles */
  @Property(name: 'collectibles')
  SingleComponentResponseOfDestinyCollectiblesComponent collectibles = null;
  
/* Item components, keyed by the item hash of the items pointed at collectibles found under the requested Presentation Node.  NOTE: I had a lot of hemming and hawing about whether these should be keyed by collectible hash or item hash... but ultimately having it be keyed by item hash meant that UI that already uses DestinyItemComponentSet data wouldn't have to have a special override to do the collectible -> item lookup once you delve into an item's details, and it also meant that you didn't have to remember that the Hash being used as the key for plugSets was different from the Hash being used for the other Dictionaries. As a result, using the Item Hash felt like the least crappy solution.  We may all come to regret this decision. We will see.  COMPONENT TYPE: [See inside the DestinyItemComponentSet contract for component types.] */
  @Property(name: 'collectibleItemComponents')
  DestinyItemComponentSetOfuint32 collectibleItemComponents = null;
  
  DestinyResponsesDestinyCollectibleNodeDetailResponse();

  @override
  String toString()  {
    return 'DestinyResponsesDestinyCollectibleNodeDetailResponse[collectibles=$collectibles, collectibleItemComponents=$collectibleItemComponents, ]';
  }
}

