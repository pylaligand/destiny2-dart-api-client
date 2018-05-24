part of destiny2_api.api;

@Entity()
class DestinyComponentsVendorsDestinyVendorGroup {
  
  @Property(name: 'vendorGroupHash')
  int vendorGroupHash = null;
  
/* The ordered list of vendors within a particular group. */
  @Property(name: 'vendorHashes')
  List<int> vendorHashes = [];
  
  DestinyComponentsVendorsDestinyVendorGroup();

  @override
  String toString()  {
    return 'DestinyComponentsVendorsDestinyVendorGroup[vendorGroupHash=$vendorGroupHash, vendorHashes=$vendorHashes, ]';
  }
}

