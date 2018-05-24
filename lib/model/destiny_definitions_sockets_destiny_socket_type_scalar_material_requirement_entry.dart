part of destiny2_api.api;

@Entity()
class DestinyDefinitionsSocketsDestinySocketTypeScalarMaterialRequirementEntry {
  
  @Property(name: 'currencyItemHash')
  int currencyItemHash = null;
  

  @Property(name: 'scalarValue')
  int scalarValue = null;
  
  DestinyDefinitionsSocketsDestinySocketTypeScalarMaterialRequirementEntry();

  @override
  String toString()  {
    return 'DestinyDefinitionsSocketsDestinySocketTypeScalarMaterialRequirementEntry[currencyItemHash=$currencyItemHash, scalarValue=$scalarValue, ]';
  }
}

