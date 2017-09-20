part of destiny2_api.api;

@Entity()
class DestinyDefinitionsDestinyMaterialRequirement {
  /* The hash identifier of the material required. Use it to look up the material's DestinyInventoryItemDefinition. */
  @Property(name: 'itemHash')
  int itemHash = null;
  
/* If True, the material will be removed from the character's inventory when the action is performed. */
  @Property(name: 'deleteOnAction')
  bool deleteOnAction = null;
  
/* The amount of the material required. */
  @Property(name: 'count')
  int count = null;
  
/* If True, this requirement is \"silent\": don't bother showing it in a material requirements display. I mean, I'm not your mom: I'm not going to tell you you *can't* show it. But we won't show it in our UI. */
  @Property(name: 'omitFromRequirements')
  bool omitFromRequirements = null;
  
  DestinyDefinitionsDestinyMaterialRequirement();

  @override
  String toString()  {
    return 'DestinyDefinitionsDestinyMaterialRequirement[itemHash=$itemHash, deleteOnAction=$deleteOnAction, count=$count, omitFromRequirements=$omitFromRequirements, ]';
  }
}

