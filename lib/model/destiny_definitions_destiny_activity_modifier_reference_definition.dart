part of destiny2_api.api;

@Entity()
class DestinyDefinitionsDestinyActivityModifierReferenceDefinition {
  /* The hash identifier for the DestinyActivityModifierDefinition referenced by this activity. */
  @Property(name: 'activityModifierHash')
  int activityModifierHash = null;
  
  DestinyDefinitionsDestinyActivityModifierReferenceDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsDestinyActivityModifierReferenceDefinition[activityModifierHash=$activityModifierHash, ]';
  }
}

