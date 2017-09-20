part of destiny2_api.api;

@Entity()
class DestinyDefinitionsDestinyBubbleDefinition {
  /* The identifier for the bubble: only guaranteed to be unique within the Destination. */
  @Property(name: 'hash')
  int hash = null;
  
  DestinyDefinitionsDestinyBubbleDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsDestinyBubbleDefinition[hash=$hash, ]';
  }
}

