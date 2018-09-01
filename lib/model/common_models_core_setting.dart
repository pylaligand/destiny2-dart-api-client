part of destiny2_api.api;

@Entity()
class CommonModelsCoreSetting {
  
  @Property(name: 'identifier')
  String identifier = null;
  

  @Property(name: 'isDefault')
  bool isDefault = null;
  

  @Property(name: 'displayName')
  String displayName = null;
  

  @Property(name: 'summary')
  String summary = null;
  

  @Property(name: 'imagePath')
  String imagePath = null;
  

  @Property(name: 'childSettings')
  List<CommonModelsCoreSetting> childSettings = [];
  
  CommonModelsCoreSetting();

  @override
  String toString()  {
    return 'CommonModelsCoreSetting[identifier=$identifier, isDefault=$isDefault, displayName=$displayName, summary=$summary, imagePath=$imagePath, childSettings=$childSettings, ]';
  }
}

