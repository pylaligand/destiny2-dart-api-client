part of destiny2_api.api;

@Entity()
class DestinyDefinitionsDestinyUnlockExpressionDefinition {
  /* A shortcut for determining the most restrictive gating that this expression performs. See the DestinyGatingScope enum's documentation for more details. */
  @Property(name: 'scope')
  DestinyDestinyGatingScope scope = null;
  
  DestinyDefinitionsDestinyUnlockExpressionDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsDestinyUnlockExpressionDefinition[scope=$scope, ]';
  }
}

