part of destiny2_api.api;

@Entity()
class CoreIdentifierOfuint32 {
  
  @Property(name: 'name')
  String name = null;
  

  @Property(name: 'identifier')
  int identifier = null;
  
  CoreIdentifierOfuint32();

  @override
  String toString()  {
    return 'CoreIdentifierOfuint32[name=$name, identifier=$identifier, ]';
  }
}

