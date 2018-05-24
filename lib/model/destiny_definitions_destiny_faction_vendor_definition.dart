part of destiny2_api.api;

@Entity()
class DestinyDefinitionsDestinyFactionVendorDefinition {
  /* The faction vendor hash. */
  @Property(name: 'vendorHash')
  int vendorHash = null;
  
/* The hash identifier for a Destination at which this vendor may be located. Each destination where a Vendor may exist will only ever have a single entry. */
  @Property(name: 'destinationHash')
  int destinationHash = null;
  
/* The relative path to the background image representing this Vendor at this location, for use in a banner. */
  @Property(name: 'backgroundImagePath')
  String backgroundImagePath = null;
  
  DestinyDefinitionsDestinyFactionVendorDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsDestinyFactionVendorDefinition[vendorHash=$vendorHash, destinationHash=$destinationHash, backgroundImagePath=$backgroundImagePath, ]';
  }
}

