part of destiny2_api.api;

@Entity()
class CommonModelsDestiny2CoreSettings {
  
  @Property(name: 'presentationRootNodes')
  List<CoreIdentifierOfuint32> presentationRootNodes = [];
  

  @Property(name: 'ammoTypeHeavyIcon')
  String ammoTypeHeavyIcon = null;
  

  @Property(name: 'ammoTypeSpecialIcon')
  String ammoTypeSpecialIcon = null;
  

  @Property(name: 'ammoTypePrimaryIcon')
  String ammoTypePrimaryIcon = null;
  
  CommonModelsDestiny2CoreSettings();

  @override
  String toString()  {
    return 'CommonModelsDestiny2CoreSettings[presentationRootNodes=$presentationRootNodes, ammoTypeHeavyIcon=$ammoTypeHeavyIcon, ammoTypeSpecialIcon=$ammoTypeSpecialIcon, ammoTypePrimaryIcon=$ammoTypePrimaryIcon, ]';
  }
}

