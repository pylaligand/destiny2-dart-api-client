part of destiny2_api.api;

@Entity()
class DestinyDefinitionsDestinyVendorSaleItemActionBlockDefinition {
  
  @Property(name: 'executeSeconds')
  double executeSeconds = null;
  

  @Property(name: 'isPositive')
  bool isPositive = null;
  
  DestinyDefinitionsDestinyVendorSaleItemActionBlockDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsDestinyVendorSaleItemActionBlockDefinition[executeSeconds=$executeSeconds, isPositive=$isPositive, ]';
  }
}

