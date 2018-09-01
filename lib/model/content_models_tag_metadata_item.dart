part of destiny2_api.api;

@Entity()
class ContentModelsTagMetadataItem {
  
  @Property(name: 'description')
  String description = null;
  

  @Property(name: 'tagText')
  String tagText = null;
  

  @Property(name: 'groups')
  List<String> groups = [];
  

  @Property(name: 'isDefault')
  bool isDefault = null;
  

  @Property(name: 'name')
  String name = null;
  
  ContentModelsTagMetadataItem();

  @override
  String toString()  {
    return 'ContentModelsTagMetadataItem[description=$description, tagText=$tagText, groups=$groups, isDefault=$isDefault, name=$name, ]';
  }
}

