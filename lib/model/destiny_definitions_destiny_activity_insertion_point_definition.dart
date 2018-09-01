part of destiny2_api.api;

@Entity()
class DestinyDefinitionsDestinyActivityInsertionPointDefinition {
  /* A unique hash value representing the phase. This can be useful for, for example, comparing how different instances of Raids have phases in different orders! */
  @Property(name: 'phaseHash')
  int phaseHash = null;
  
  DestinyDefinitionsDestinyActivityInsertionPointDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsDestinyActivityInsertionPointDefinition[phaseHash=$phaseHash, ]';
  }
}

