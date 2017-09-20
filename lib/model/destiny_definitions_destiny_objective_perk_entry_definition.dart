part of destiny2_api.api;

@Entity()
class DestinyDefinitionsDestinyObjectivePerkEntryDefinition {
  /* The hash identifier of the DestinySandboxPerkDefinition that will be applied to the character. */
  @Property(name: 'perkHash')
  int perkHash = null;
  
/* An enumeration indicating whether it will be applied as long as the Objective is active, when it's completed, or until it's completed. */
  @Property(name: 'style')
  Object style = null;
  
  DestinyDefinitionsDestinyObjectivePerkEntryDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsDestinyObjectivePerkEntryDefinition[perkHash=$perkHash, style=$style, ]';
  }
}

