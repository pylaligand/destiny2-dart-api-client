part of destiny2_api.api;

@Entity()
class DestinyDefinitionsDestinyItemSummaryBlockDefinition {
  /* Apparently when rendering an item in a reward, this should be used as a sort priority. We're not doing it presently. */
  @Property(name: 'sortPriority')
  int sortPriority = null;
  
  DestinyDefinitionsDestinyItemSummaryBlockDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsDestinyItemSummaryBlockDefinition[sortPriority=$sortPriority, ]';
  }
}

