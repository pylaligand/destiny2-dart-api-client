part of destiny2_api.api;

@Entity()
class ContentContentRepresentation {
  
  @Property(name: 'name')
  String name = null;
  

  @Property(name: 'path')
  String path = null;
  

  @Property(name: 'validationString')
  String validationString = null;
  
  ContentContentRepresentation();

  @override
  String toString()  {
    return 'ContentContentRepresentation[name=$name, path=$path, validationString=$validationString, ]';
  }
}

