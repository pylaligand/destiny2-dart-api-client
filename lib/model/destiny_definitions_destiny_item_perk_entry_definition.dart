part of destiny2_api.api;

@Entity()
class DestinyDefinitionsDestinyItemPerkEntryDefinition {
  /* If this perk is not active, this is the string to show for why it's not providing its benefits. */
  @Property(name: 'requirementDisplayString')
  String requirementDisplayString = null;
  
/* A hash identifier for the DestinySandboxPerkDefinition being provided on the item. */
  @Property(name: 'perkHash')
  int perkHash = null;
  
  DestinyDefinitionsDestinyItemPerkEntryDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsDestinyItemPerkEntryDefinition[requirementDisplayString=$requirementDisplayString, perkHash=$perkHash, ]';
  }
}

