part of destiny2_api.api;

@Entity()
class CommonModelsDestiny2CoreSettings {
  
  @Property(name: 'collectionRootNode')
  int collectionRootNode = null;
  

  @Property(name: 'badgesRootNode')
  int badgesRootNode = null;
  

  @Property(name: 'recordsRootNode')
  int recordsRootNode = null;
  

  @Property(name: 'medalsRootNode')
  int medalsRootNode = null;
  

  @Property(name: 'undiscoveredCollectibleImage')
  String undiscoveredCollectibleImage = null;
  

  @Property(name: 'ammoTypeHeavyIcon')
  String ammoTypeHeavyIcon = null;
  

  @Property(name: 'ammoTypeSpecialIcon')
  String ammoTypeSpecialIcon = null;
  

  @Property(name: 'ammoTypePrimaryIcon')
  String ammoTypePrimaryIcon = null;
  
  CommonModelsDestiny2CoreSettings();

  @override
  String toString()  {
    return 'CommonModelsDestiny2CoreSettings[collectionRootNode=$collectionRootNode, badgesRootNode=$badgesRootNode, recordsRootNode=$recordsRootNode, medalsRootNode=$medalsRootNode, undiscoveredCollectibleImage=$undiscoveredCollectibleImage, ammoTypeHeavyIcon=$ammoTypeHeavyIcon, ammoTypeSpecialIcon=$ammoTypeSpecialIcon, ammoTypePrimaryIcon=$ammoTypePrimaryIcon, ]';
  }
}

