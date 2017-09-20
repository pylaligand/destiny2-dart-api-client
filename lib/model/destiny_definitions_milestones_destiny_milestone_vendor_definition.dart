part of destiny2_api.api;

@Entity()
class DestinyDefinitionsMilestonesDestinyMilestoneVendorDefinition {
  /* The hash of the vendor whose wares should be shown as associated with the Milestone. */
  @Property(name: 'vendorHash')
  int vendorHash = null;
  
  DestinyDefinitionsMilestonesDestinyMilestoneVendorDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsMilestonesDestinyMilestoneVendorDefinition[vendorHash=$vendorHash, ]';
  }
}

