part of destiny2_api.api;

@Entity()
class DestinyDefinitionsItemsDestinyParentItemOverride {
  
  @Property(name: 'additionalEquipRequirementsDisplayStrings')
  List<String> additionalEquipRequirementsDisplayStrings = [];
  

  @Property(name: 'pipIcon')
  String pipIcon = null;
  
  DestinyDefinitionsItemsDestinyParentItemOverride();

  @override
  String toString()  {
    return 'DestinyDefinitionsItemsDestinyParentItemOverride[additionalEquipRequirementsDisplayStrings=$additionalEquipRequirementsDisplayStrings, pipIcon=$pipIcon, ]';
  }
}

