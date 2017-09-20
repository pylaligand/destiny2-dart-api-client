part of destiny2_api.api;

@Entity()
class DestinyDefinitionsDestinyVendorServiceDefinition {
  /* The localized name of a service provided. */
  @Property(name: 'name')
  String name = null;
  
  DestinyDefinitionsDestinyVendorServiceDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsDestinyVendorServiceDefinition[name=$name, ]';
  }
}

