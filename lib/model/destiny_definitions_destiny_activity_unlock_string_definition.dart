part of destiny2_api.api;

@Entity()
class DestinyDefinitionsDestinyActivityUnlockStringDefinition {
  /* The string to be displayed if the conditions are met. */
  @Property(name: 'displayString')
  String displayString = null;
  
  DestinyDefinitionsDestinyActivityUnlockStringDefinition();

  @override
  String toString()  {
    return 'DestinyDefinitionsDestinyActivityUnlockStringDefinition[displayString=$displayString, ]';
  }
}

