part of destiny2_api.api;

@Entity()
class DestinyDefinitionsDestinyVendorGroupReference {
  /* The DestinyVendorGroupDefinition to which this Vendor can belong. */
  @Property(name: 'vendorGroupHash')
  int vendorGroupHash = null;
  
  DestinyDefinitionsDestinyVendorGroupReference();

  @override
  String toString()  {
    return 'DestinyDefinitionsDestinyVendorGroupReference[vendorGroupHash=$vendorGroupHash, ]';
  }
}

