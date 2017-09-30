part of destiny2_api.api;

@Entity()
class DestinyEntitiesVendorsDestinyVendorComponent {
  /* The unique identifier for the vendor. Use it to look up their DestinyVendorDefinition. */
  @Property(name: 'vendorHash')
  int vendorHash = null;
  
/* Long ago, we thought it would be a good idea to have special UI that showed whether or not you've seen a Vendor's inventory after cycling.   For now, we don't have that UI anymore. This property still exists for historical purposes. Don't worry about it. */
  @Property(name: 'ackState')
  UserAckState ackState = null;
  
/* The date when this vendor's inventory will next rotate/refresh. */
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
  
  DestinyEntitiesVendorsDestinyVendorComponent();

  @override
  String toString()  {
    return 'DestinyEntitiesVendorsDestinyVendorComponent[vendorHash=$vendorHash, ackState=$ackState, nextRefreshDate=$nextRefreshDate, enabled=$enabled, canPurchase=$canPurchase, progression=$progression, ]';
  }
}

