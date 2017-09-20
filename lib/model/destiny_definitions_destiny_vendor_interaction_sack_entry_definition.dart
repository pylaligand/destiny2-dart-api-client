part of destiny2_api.api;

@Entity()
class DestinyDefinitionsDestinyVendorInteractionSackEntryDefinition {
  
  @Property(name: 'sackType')
  int sackType = null;
  
  DestinyDefinitionsDestinyVendorInteractionSackEntryDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsDestinyVendorInteractionSackEntryDefinition[sackType=$sackType, ]';
  }
}

