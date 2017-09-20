part of destiny2_api.api;

@Entity()
class DestinyDefinitionsDestinyItemValueBlockDefinition {
  /* References to the items that make up this item's \"value\", and the quantity. */
  @Property(name: 'itemValue')
  List<DestinyDestinyItemQuantity> itemValue = [];
  
/* If there's a localized text description of the value provided, this will be said description. */
  @Property(name: 'valueDescription')
  String valueDescription = null;
  
  DestinyDefinitionsDestinyItemValueBlockDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsDestinyItemValueBlockDefinition[itemValue=$itemValue, valueDescription=$valueDescription, ]';
  }
}

