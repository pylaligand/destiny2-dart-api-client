part of destiny2_api.api;

@Entity()
class DestinyEntitiesVendorsDestinyVendorComponent {
  /* The unique identifier for the vendor. Use it to look up their DestinyVendorDefinition. */
  @Property(name: 'vendorHash')
  int vendorHash = null;
  
/* The date when this vendor's inventory will next rotate/refresh.  Note that this is distinct from the date ranges that the vendor is visible/available in-game: this field indicates the specific time when the vendor's available items refresh and rotate, regardless of whether the vendor is actually available at that time. Unfortunately, these two values may be (and are, for the case of important vendors like Xur) different.  Issue https://github.com/Bungie-net/api/issues/353 is tracking a fix to start providing visibility date ranges where possible in addition to this refresh date, so that all important dates for vendors are available for use. */
  @Property(name: 'nextRefreshDate')
  DateTime nextRefreshDate = null;
  
/* If True, the Vendor is currently accessible.   If False, they may not actually be visible in the world at the moment. */
  @Property(name: 'enabled')
  bool enabled = null;
  
/* If True, you can purchase from the Vendor.  Theoretically, Vendors can be restricted from selling items. In practice, none do that (yet?). */
  @Property(name: 'canPurchase')
  bool canPurchase = null;
  
/* If the Vendor has a related Reputation, this is the Progression data that represents the character's Reputation level with this Vendor. */
  @Property(name: 'progression')
  DestinyDestinyProgression progression = null;
  
/* An index into the vendor definition's \"locations\" property array, indicating which location they are at currently. If -1, then the vendor has no known location (and you may choose not to show them in your UI as a result. I mean, it's your bag honey) */
  @Property(name: 'vendorLocationIndex')
  int vendorLocationIndex = null;
  
/* If this vendor has a seasonal rank, this will be the calculated value of that rank. How nice is that? I mean, that's pretty sweeet. It's a whole 32 bit integer. */
  @Property(name: 'seasonalRank')
  int seasonalRank = null;
  
  DestinyEntitiesVendorsDestinyVendorComponent();

  @override
  String toString()  {
    return 'DestinyEntitiesVendorsDestinyVendorComponent[vendorHash=$vendorHash, nextRefreshDate=$nextRefreshDate, enabled=$enabled, canPurchase=$canPurchase, progression=$progression, vendorLocationIndex=$vendorLocationIndex, seasonalRank=$seasonalRank, ]';
  }
}

