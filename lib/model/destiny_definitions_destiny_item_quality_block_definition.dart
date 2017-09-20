part of destiny2_api.api;

@Entity()
class DestinyDefinitionsDestinyItemQualityBlockDefinition {
  /* The \"base\" defined level of an item. This is a list because, in theory, each Expansion could define its own base level for an item.  In practice, not only was that never done in Destiny 1, but now this isn't even populated at all. When it's not populated, the level at which it spawns has to be inferred by Reward information, of which BNet receives an imperfect view and will only be reliable on instanced data as a result. */
  @Property(name: 'itemLevels')
  List<int> itemLevels = [];
  
/* qualityLevel is used in combination with the item's level to calculate stats like Attack and Defense. It plays a role in that calculation, but not nearly as large as itemLevel does. */
  @Property(name: 'qualityLevel')
  int qualityLevel = null;
  
/* The string identifier for this item's \"infusability\", if any.   Items that match the same infusionCategoryName are allowed to infuse with each other. */
  @Property(name: 'infusionCategoryName')
  String infusionCategoryName = null;
  
/* The hash identifier for the infusion. It does not map to a Definition entity. */
  @Property(name: 'infusionCategoryHash')
  int infusionCategoryHash = null;
  
/* An item can refer to pre-set level requirements. They are defined in DestinyProgressionLevelRequirementDefinition, and you can use this hash to find the appropriate definition. */
  @Property(name: 'progressionLevelRequirementHash')
  int progressionLevelRequirementHash = null;
  
  DestinyDefinitionsDestinyItemQualityBlockDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsDestinyItemQualityBlockDefinition[itemLevels=$itemLevels, qualityLevel=$qualityLevel, infusionCategoryName=$infusionCategoryName, infusionCategoryHash=$infusionCategoryHash, progressionLevelRequirementHash=$progressionLevelRequirementHash, ]';
  }
}

