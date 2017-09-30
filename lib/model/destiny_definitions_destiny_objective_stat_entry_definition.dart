part of destiny2_api.api;

@Entity()
class DestinyDefinitionsDestinyObjectiveStatEntryDefinition {
  /* The stat being modified, and the value used. */
  @Property(name: 'stat')
  DestinyDefinitionsDestinyItemInvestmentStatDefinition stat = null;
  
/* Whether it will be applied as long as the objective is active, when it's completed, or until it's completed. */
  @Property(name: 'style')
  DestinyDestinyObjectiveGrantStyle style = null;
  
  DestinyDefinitionsDestinyObjectiveStatEntryDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsDestinyObjectiveStatEntryDefinition[stat=$stat, style=$style, ]';
  }
}

