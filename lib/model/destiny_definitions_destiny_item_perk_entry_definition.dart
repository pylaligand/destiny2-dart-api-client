part of destiny2_api.api;

@Entity()
class DestinyDefinitionsDestinyItemPerkEntryDefinition {
  /* If this perk is not active, this is the string to show for why it's not providing its benefits. */
  @Property(name: 'requirementDisplayString')
  String requirementDisplayString = null;
  
/* A hash identifier for the DestinySandboxPerkDefinition being provided on the item. */
  @Property(name: 'perkHash')
  int perkHash = null;
  
/* Indicates whether this perk should be shown, or if it should be shown disabled. */
  @Property(name: 'perkVisibility')
  DestinyItemPerkVisibility perkVisibility = null;
  
  DestinyDefinitionsDestinyItemPerkEntryDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsDestinyItemPerkEntryDefinition[requirementDisplayString=$requirementDisplayString, perkHash=$perkHash, perkVisibility=$perkVisibility, ]';
  }
}

