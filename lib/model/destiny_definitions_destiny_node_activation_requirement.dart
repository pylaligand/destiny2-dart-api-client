part of destiny2_api.api;

@Entity()
class DestinyDefinitionsDestinyNodeActivationRequirement {
  /* The Progression level on the Talent Grid required to activate this node.  See DestinyTalentGridDefinition.progressionHash for the related Progression, and read DestinyProgressionDefinition's documentation to learn more about Progressions. */
  @Property(name: 'gridLevel')
  int gridLevel = null;
  
/* The list of hash identifiers for material requirement sets: materials that are required for the node to be activated. See DestinyMaterialRequirementSetDefinition for more information about material requirements.  In this case, only a single DestinyMaterialRequirementSetDefinition will be chosen from this list, and we won't know which one will be chosen until an instance of the item is created. */
  @Property(name: 'materialRequirementHashes')
  List<int> materialRequirementHashes = [];
  
  DestinyDefinitionsDestinyNodeActivationRequirement();

  @override
  String toString()  {
    return 'DestinyDefinitionsDestinyNodeActivationRequirement[gridLevel=$gridLevel, materialRequirementHashes=$materialRequirementHashes, ]';
  }
}

