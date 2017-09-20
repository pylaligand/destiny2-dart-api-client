part of destiny2_api.api;

@Entity()
class DestinyDefinitionsDestinyTalentNodeStepGroups {
  
  @Property(name: 'weaponPerformance')
  DestinyDefinitionsDestinyTalentNodeStepWeaponPerformances weaponPerformance = null;
  

  @Property(name: 'impactEffects')
  DestinyDefinitionsDestinyTalentNodeStepImpactEffects impactEffects = null;
  

  @Property(name: 'guardianAttributes')
  DestinyDefinitionsDestinyTalentNodeStepGuardianAttributes guardianAttributes = null;
  

  @Property(name: 'lightAbilities')
  DestinyDefinitionsDestinyTalentNodeStepLightAbilities lightAbilities = null;
  

  @Property(name: 'damageTypes')
  DestinyDefinitionsDestinyTalentNodeStepDamageTypes damageTypes = null;
  
  DestinyDefinitionsDestinyTalentNodeStepGroups();

  @override
  String toString()  {
    return 'DestinyDefinitionsDestinyTalentNodeStepGroups[weaponPerformance=$weaponPerformance, impactEffects=$impactEffects, guardianAttributes=$guardianAttributes, lightAbilities=$lightAbilities, damageTypes=$damageTypes, ]';
  }
}

