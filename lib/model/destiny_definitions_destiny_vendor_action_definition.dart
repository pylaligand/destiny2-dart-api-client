part of destiny2_api.api;

@Entity()
class DestinyDefinitionsDestinyVendorActionDefinition {
  
  @Property(name: 'description')
  String description = null;
  

  @Property(name: 'executeSeconds')
  int executeSeconds = null;
  

  @Property(name: 'icon')
  String icon = null;
  

  @Property(name: 'name')
  String name = null;
  

  @Property(name: 'verb')
  String verb = null;
  

  @Property(name: 'isPositive')
  bool isPositive = null;
  

  @Property(name: 'actionId')
  String actionId = null;
  

  @Property(name: 'actionHash')
  int actionHash = null;
  

  @Property(name: 'autoPerformAction')
  bool autoPerformAction = null;
  
  DestinyDefinitionsDestinyVendorActionDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsDestinyVendorActionDefinition[description=$description, executeSeconds=$executeSeconds, icon=$icon, name=$name, verb=$verb, isPositive=$isPositive, actionId=$actionId, actionHash=$actionHash, autoPerformAction=$autoPerformAction, ]';
  }
}

