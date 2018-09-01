part of destiny2_api.api;

@Entity()
class ContentModelsContentPreview {
  
  @Property(name: 'name')
  String name = null;
  

  @Property(name: 'path')
  String path = null;
  

  @Property(name: 'itemInSet')
  bool itemInSet = null;
  

  @Property(name: 'setTag')
  String setTag = null;
  

  @Property(name: 'setNesting')
  int setNesting = null;
  

  @Property(name: 'useSetId')
  int useSetId = null;
  
  ContentModelsContentPreview();

  @override
  String toString()  {
    return 'ContentModelsContentPreview[name=$name, path=$path, itemInSet=$itemInSet, setTag=$setTag, setNesting=$setNesting, useSetId=$useSetId, ]';
  }
}

