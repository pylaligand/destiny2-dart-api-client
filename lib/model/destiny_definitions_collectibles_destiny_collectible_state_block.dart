part of destiny2_api.api;

@Entity()
class DestinyDefinitionsCollectiblesDestinyCollectibleStateBlock {
  
  @Property(name: 'obscuredOverrideItemHash')
  int obscuredOverrideItemHash = null;
  

  @Property(name: 'requirements')
  DestinyDefinitionsPresentationDestinyPresentationNodeRequirementsBlock requirements = null;
  
  DestinyDefinitionsCollectiblesDestinyCollectibleStateBlock();

  @override
  String toString()  {
    return 'DestinyDefinitionsCollectiblesDestinyCollectibleStateBlock[obscuredOverrideItemHash=$obscuredOverrideItemHash, requirements=$requirements, ]';
  }
}

