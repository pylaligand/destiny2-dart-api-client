part of destiny2_api.api;

@Entity()
class ContentModelsContentTypePropertySection {
  
  @Property(name: 'name')
  String name = null;
  

  @Property(name: 'readableName')
  String readableName = null;
  

  @Property(name: 'collapsed')
  bool collapsed = null;
  
  ContentModelsContentTypePropertySection();

  @override
  String toString()  {
    return 'ContentModelsContentTypePropertySection[name=$name, readableName=$readableName, collapsed=$collapsed, ]';
  }
}

