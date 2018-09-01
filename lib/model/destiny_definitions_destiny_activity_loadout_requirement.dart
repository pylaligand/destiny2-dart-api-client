part of destiny2_api.api;

@Entity()
class DestinyDefinitionsDestinyActivityLoadoutRequirement {
  
  @Property(name: 'equipmentSlotHash')
  int equipmentSlotHash = null;
  

  @Property(name: 'allowedEquippedItemHashes')
  List<int> allowedEquippedItemHashes = [];
  

  @Property(name: 'allowedWeaponSubTypes')
  List<DestinyDestinyItemSubType> allowedWeaponSubTypes = [];
  
  DestinyDefinitionsDestinyActivityLoadoutRequirement();

  @override
  String toString()  {
    return 'DestinyDefinitionsDestinyActivityLoadoutRequirement[equipmentSlotHash=$equipmentSlotHash, allowedEquippedItemHashes=$allowedEquippedItemHashes, allowedWeaponSubTypes=$allowedWeaponSubTypes, ]';
  }
}

