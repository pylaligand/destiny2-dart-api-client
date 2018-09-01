part of destiny2_api.api;

@Entity()
class ContentModelsTagMetadataDefinition {
  
  @Property(name: 'description')
  String description = null;
  

  @Property(name: 'order')
  int order = null;
  

  @Property(name: 'items')
  List<ContentModelsTagMetadataItem> items = [];
  

  @Property(name: 'datatype')
  String datatype = null;
  

  @Property(name: 'name')
  String name = null;
  

  @Property(name: 'isRequired')
  bool isRequired = null;
  
  ContentModelsTagMetadataDefinition();

  @override
  String toString()  {
    return 'ContentModelsTagMetadataDefinition[description=$description, order=$order, items=$items, datatype=$datatype, name=$name, isRequired=$isRequired, ]';
  }
}

