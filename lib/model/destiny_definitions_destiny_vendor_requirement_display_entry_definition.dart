part of destiny2_api.api;

@Entity()
class DestinyDefinitionsDestinyVendorRequirementDisplayEntryDefinition {
  
  @Property(name: 'icon')
  String icon = null;
  

  @Property(name: 'name')
  String name = null;
  

  @Property(name: 'source')
  String source = null;
  

  @Property(name: 'type')
  String type = null;
  
  DestinyDefinitionsDestinyVendorRequirementDisplayEntryDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsDestinyVendorRequirementDisplayEntryDefinition[icon=$icon, name=$name, source=$source, type=$type, ]';
  }
}

