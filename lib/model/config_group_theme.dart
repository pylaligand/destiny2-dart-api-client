part of destiny2_api.api;

@Entity()
class ConfigGroupTheme {
  
  @Property(name: 'name')
  String name = null;
  

  @Property(name: 'folder')
  String folder = null;
  

  @Property(name: 'description')
  String description = null;
  
  ConfigGroupTheme();

  @override
  String toString()  {
    return 'ConfigGroupTheme[name=$name, folder=$folder, description=$description, ]';
  }
}

