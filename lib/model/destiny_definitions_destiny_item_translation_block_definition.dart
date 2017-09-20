part of destiny2_api.api;

@Entity()
class DestinyDefinitionsDestinyItemTranslationBlockDefinition {
  
  @Property(name: 'weaponPatternIdentifier')
  String weaponPatternIdentifier = null;
  

  @Property(name: 'weaponPatternHash')
  int weaponPatternHash = null;
  

  @Property(name: 'defaultDyes')
  List<DestinyDyeReference> defaultDyes = [];
  

  @Property(name: 'lockedDyes')
  List<DestinyDyeReference> lockedDyes = [];
  

  @Property(name: 'customDyes')
  List<DestinyDyeReference> customDyes = [];
  

  @Property(name: 'arrangements')
  List<DestinyDefinitionsDestinyGearArtArrangementReference> arrangements = [];
  

  @Property(name: 'hasGeometry')
  bool hasGeometry = null;
  
  DestinyDefinitionsDestinyItemTranslationBlockDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsDestinyItemTranslationBlockDefinition[weaponPatternIdentifier=$weaponPatternIdentifier, weaponPatternHash=$weaponPatternHash, defaultDyes=$defaultDyes, lockedDyes=$lockedDyes, customDyes=$customDyes, arrangements=$arrangements, hasGeometry=$hasGeometry, ]';
  }
}

