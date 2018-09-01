part of destiny2_api.api;

@Entity()
class CommonModelsCoreSystem {
  
  @Property(name: 'enabled')
  bool enabled = null;
  

  @Property(name: 'parameters')
  Map<String, String> parameters = {};
  
  CommonModelsCoreSystem();

  @override
  String toString()  {
    return 'CommonModelsCoreSystem[enabled=$enabled, parameters=$parameters, ]';
  }
}

