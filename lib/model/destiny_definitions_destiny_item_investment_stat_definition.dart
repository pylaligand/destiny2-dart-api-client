part of destiny2_api.api;

@Entity()
class DestinyDefinitionsDestinyItemInvestmentStatDefinition {
  /* The hash identifier for the DestinyStatDefinition defining this stat. */
  @Property(name: 'statTypeHash')
  int statTypeHash = null;
  
/* The raw \"Investment\" value for the stat, before transformations are performed to turn this raw stat into stats that are displayed in the game UI. */
  @Property(name: 'value')
  int value = null;
  
  DestinyDefinitionsDestinyItemInvestmentStatDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsDestinyItemInvestmentStatDefinition[statTypeHash=$statTypeHash, value=$value, ]';
  }
}

